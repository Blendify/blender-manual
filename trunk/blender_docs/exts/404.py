# -*- encoding: utf-8 -*-
#
# Versioning for the 404 page.
# When you want to build an archive version update the versions.json file beforehand.
#

import os
import re
import json

from sphinx.util import logging


def html_page_context(app, pagename, templatename, context, doctree):
    """Adds a version tag variable to the context which can be accessed by the template."""

    if templatename == "404.html":
        version_nbr = context['version']
        version_tag = version_nbr

        version_data = read_versions()
        if version_data:
            for tag, title in version_data.items():
                m = re.match(r"\d\.\d[\w\d\.]*", title)
                if m and m[0] == version_nbr:
                     version_tag = tag.strip();
                     break;

        if "versiontag" not in context:
            context['versiontag'] = version_tag
        else:
            logger = logging.getLogger(__name__)
            logger.error('context override')


def read_versions():
    current_dir = os.path.abspath(os.path.dirname(__file__))
    version_fn = os.path.normpath(os.path.join(current_dir, "..", "resources", "versions.json"))

    try:
        with open(version_fn) as json_data:
            data = json.load(json_data)
        return data

    except (IOError, OSError) as err:
        logger = logging.getLogger(__name__)
        logger.warning("{0}: cannot read: {1}".format(version_fn, err))
        return None


def setup(app):
    app.connect('html-page-context', html_page_context)
    return {
        "parallel_read_safe": True,
    }
