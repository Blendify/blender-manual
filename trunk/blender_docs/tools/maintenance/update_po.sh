#!/bin/bash
# Apache License, Version 2.0

# This script is to reduce tedious steps involved when updating PO files.
# It looks more complex then it really is, since we do multi-processing
# to update the PO files, to save some time.


# Trap on the ERR pseudo signal
# http://stackoverflow.com/a/4384381/432509
err_trap () {
    errcode=$? # save the exit code as the first thing done in the trap function
	echo "  Error($errcode) on line ${BASH_LINENO[0]}, in command:"
    echo "  $BASH_COMMAND"
    exit $errcode
}
trap err_trap ERR


# Ensure we're in the repo's base:
BASEDIR=$(dirname $0)
cd $BASEDIR
cd ../../


# Create PO files:
rm -rf build/locale
make gettext


# Update the locale dir:
svn cleanup locale
svn up locale


# Update PO files
#
# note, this can be slow so (multi-process)
for lang in `find locale/ -maxdepth 1 -mindepth 1 -type d -not -iwholename '*.svn*' -printf '%f\n' | sort`; do
	sphinx-intl update -p build/locale -l $lang &
done

FAIL=0
for job in `jobs -p`; do
echo $job
    wait $job || let "FAIL+=1"
done
if [ "$FAIL" != "0" ]; then
	echo "Error updating"
	exit 1
fi
unset FAIL


# Add newly created PO files:
cd locale/
NEW_FILES=`svn status . | grep -e "\.po$" | awk '/^[?]/{print $2}'`
if [ "$NEW_FILES" != "" ]; then
	svn add $NEW_FILES
fi
unset NEW_FILES
cd -


# Notify on redundant PO files
python3 tools/rst_check_structure.py --locale

# Print Commit message:
REVISION=`svn info . | grep '^Revision:' | sed -e 's/^Revision: //'`
echo " svn ci locale/ -m \"Update r"$REVISION\"

