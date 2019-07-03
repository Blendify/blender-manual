#!/usr/bin/env python3
"""
This utility is intended to update screenshots, currently it covers:

- Preferences (preferences_section_*.png).

Once this command has finshed, review:

   manual_images_preview.html

If the images are acceptable, run:

   mv manual_images_preview/* manual/images/
"""

import sys
import os
if "bpy" not in sys.modules:
    import subprocess
    blender = os.environ.get("BLENDER_BIN", "blender")

    command = [
        blender,
        "--factory-startup",
        "-noaudio",
        "--no-window-focus",
        "--no-native-pixels",
        # For preferences this wont matter, for other screen-shots it may.
        # "--window-geometry", "0", "0", "800", "600",
        "--window-geometry", "0", "0", "1280", "720",
        "--enable-event-simulate",
        "--python", __file__,
    ]
    subprocess.run(
        command
    )
    sys.exit(0)


ROOT_DIR = os.path.normpath(os.path.join(os.path.dirname(__file__), ".."))

IMAGE_DIR_FINAL = os.path.join(ROOT_DIR, "manual", "images")
IMAGE_DIR_PREVIEW = os.path.join(ROOT_DIR, "manual_images_preview")

if not os.path.exists(IMAGE_DIR_PREVIEW):
    os.mkdir(IMAGE_DIR_PREVIEW)



def setup_default_preferences(preferences):
    """ Set preferences useful for automation.
    """
    preferences.view.show_splash = False
    preferences.view.smooth_view = 0
    # preferences.view.use_quit_dialog = False
    preferences.filepaths.use_auto_save_temporary_files = False

    bpy.app.use_userpref_skip_save_on_exit = False



import bpy
from bpy import context

setup_default_preferences(context.preferences)

window = context.window

def run(event_iter):
    i = iter(event_iter)
    def event_step():
        ret = next(i, Ellipsis)
        if ret is Ellipsis:
            return None
        return 0.0

    bpy.app.timers.register(event_step, first_interval=0.0)


def tap_key(window, type):
    window.event_simulate(type=type, value='PRESS')
    window.event_simulate(type=type, value='RELEASE')


def screenshot_preferences():
    prefs = context.preferences

    yield

    # bpy.ops.screen.userpref_show({"window": window, "screen": window.screen}, 'INVOKE_DEFAULT')
    tap_key(window, 'F4')
    yield
    tap_key(window, 'P')
    yield

    prefs_window = next(iter([w for w in context.window_manager.windows if w.screen.is_temporary]))
    print(prefs_window.screen)
    area = prefs_window.screen.areas[0]

    prefs_sections = tuple(
        e.identifier
        for e in prefs.rna_type.properties["active_section"].enum_items
    )

    for section in prefs_sections:
        filepath = os.path.join(
            IMAGE_DIR_PREVIEW,
            "preferences_section_" + section.lower() + ".png",
        )
        setattr(prefs, "active_section", section)

        yield
        bpy.ops.screen.screenshot(
            {"window": prefs_window},
            filepath=filepath,
        )
        yield

    yield

    # import IPython
    # IPython.embed()

    bpy.app.use_event_simulate = False

    yield

    print(__doc__)

    sys.exit(0)


run(screenshot_preferences())


# ----------------------------------------------------------------------
# Generate HTML

with open(os.path.join(ROOT_DIR, "manual_images_preview.html"), 'w', encoding='utf-8') as fh:
    fw = fh.write
    fw('<!DOCTYPE html>\n')
    fw('<html>\n')
    fw('<body>\n')

    fw('<table border = "1">\n')

    for filename in os.listdir(IMAGE_DIR_PREVIEW):

        file_old = os.path.relpath(os.path.join(IMAGE_DIR_FINAL, filename), ROOT_DIR)
        file_new = os.path.relpath(os.path.join(IMAGE_DIR_PREVIEW, filename), ROOT_DIR)

        fw('  <tr>\n')
        fw('    <td><img src="{:s}"></td>\n'.format(file_old))
        fw('    <td><img src="{:s}"></td>\n'.format(file_new))
        fw('  </tr>\n')

    fw('</table>\n')


    fw('</body>\n')
    fw('</html>\n')
