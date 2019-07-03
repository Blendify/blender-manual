#!/usr/bin/env python3
"""
******************
Update Screenshots
******************

This utility is intended to update screenshots, currently it covers:

- Preferences (preferences_section_*.png).

Once this command has finished, review:

   manual_images_preview.html

If the images are acceptable, run:

   mv manual_images_preview/* manual/images/


Example Usage
=============

   env BLENDER_BIN=/src/blender/blender.bin ./tools_maintenance/update_screenshots.py
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
        # Note: opening preferences requires window focus.
        # ideally we could work around this.
        # "--no-window-focus",
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

# -----------
# Setup Paths

ROOT_DIR = os.path.normpath(os.path.join(os.path.dirname(__file__), ".."))

IMAGE_DIR_FINAL = os.path.join(ROOT_DIR, "manual", "images")
IMAGE_DIR_PREVIEW = os.path.join(ROOT_DIR, "manual_images_preview")

if not os.path.exists(IMAGE_DIR_PREVIEW):
    os.mkdir(IMAGE_DIR_PREVIEW)


# -------------
# Other Globals

# Workaround for previews not being generated instantly.
# Wait for this many ticks before taking a screenshot.
SCREENSHOT_WAIT_TICKS = 4

# ----------------------------------------------------------------------
# Blender Defaults

def setup_default_preferences(preferences):
    """ Set preferences useful for automation.
    """
    preferences.view.show_splash = False
    preferences.view.smooth_view = 0
    # preferences.view.use_quit_dialog = False
    preferences.filepaths.use_auto_save_temporary_files = False

    bpy.app.use_userpref_skip_save_on_exit = False



import bpy


# ----------------------------------------------------------------------
# Blender Timer Wrapper

def run_iter_from_timer(event_iter):
    i = iter(event_iter)

    def event_step():
        ret = next(i, Ellipsis)
        if ret is Ellipsis:
            return None
        return 0.0

    bpy.app.timers.register(event_step, first_interval=0.0)


# ----------------------------------------------------------------------
# Blender Helpers

def window_tap_key(*, window, type):
    window.event_simulate(type=type, value='PRESS')
    window.event_simulate(type=type, value='RELEASE')


def window_screenshot_to_filepath(*, window, filepath):
    for _ in range(SCREENSHOT_WAIT_TICKS):
        yield

    bpy.ops.screen.screenshot(
        {"window": window},
        filepath=filepath,
    )
    yield


# ----------------------------------------------------------------------
# Screenshot Preferences

def screenshot_preferences(window):
    from bpy import context

    prefs = context.preferences

    yield

    # We can't open preferences from a timer, use the shortcut.
    # bpy.ops.screen.userpref_show({"window": window, "screen": window.screen}, 'INVOKE_DEFAULT')
    window_tap_key(window=window, type='F4')
    yield
    window_tap_key(window=window, type='P')
    yield

    prefs_window = next(iter([w for w in context.window_manager.windows if w.screen.is_temporary]))
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

        yield from window_screenshot_to_filepath(window=prefs_window, filepath=filepath)

    bpy.ops.wm.window_close({"window": prefs_window})

    yield

    # import IPython
    # IPython.embed()

    bpy.app.use_event_simulate = False
    prefs.is_dirty = False

    yield

    print(__doc__)


    sys.exit(0)


# ----------------------------------------------------------------------
# Generate HTML
#
# Run this after all other operations.

def generate_preview_html():
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


def screenshot_all(window):
    yield from screenshot_preferences(window)

    # Finally
    generate_preview_html()
    yield


def main():
    from bpy import context

    setup_default_preferences(context.preferences)

    run_iter_from_timer(screenshot_all(context.window))


if __name__ == "__main__":
    main()
