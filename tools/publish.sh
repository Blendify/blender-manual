#!/bin/sh
# Licensed under the Apache License, Version 2.0 (the "License")

CURRENT_DIR=`dirname "$0"`

# In order to run this script, you should have a blender-manual-html checkout
# of the live docs repo.

# input source for RST files
RST_INPUT=$CURRENT_DIR"/../manual"
# temp location for building docs
HTML_BUILD=$CURRENT_DIR"/../build/html_release"

# final output for docs (for upload)
HTML_OUT=$CURRENT_DIR"/../../blender-manual-html"
if [ ! -d $HTML_OUT ]; then
	# try fallback (_ prefix)
	HTML_OUT=$CURRENT_DIR"/../../_blender-manual-html"
	if [ ! -d $HTML_OUT ]; then
		echo The \"$HTML_OUT\" output directory does not exsit.
		exit 0
	fi
fi

if [[ $1 == '--dry' ]]; then
	ARGS="--dry-run"
fi


rm -rf $HTML_BUILD
sphinx-build -b html $RST_INPUT $HTML_BUILD
# if [ $? -eq 0 ]; then
# 	echo Sphinx build cancelled, aborting.
# 	rm -rf $HTML_BUILD
# 	exit 0
# fi

rsync -av --delete --exclude '.git' $ARGS $HTML_BUILD/ $HTML_OUT/
rm -rf $HTML_BUILD

