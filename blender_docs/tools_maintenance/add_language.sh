#!/bin/bash
YOUR_NAME="Your Name"
YOUR_EMAIL="your-email@some-server.com"
YOUR_ID="$YOUR_NAME <$YOUR_EMAIL>"
YOUR_TRANSLATION_TEAM="your town/city, Country <$YOUR_EMAIL>"
YOUR_LANGUAGE_CODE="vi"

date_bin=/usr/bin/date
time_now=$($date_bin +"%F %H:%M%z")
po_revision_date_value="PO-Revision-Date: ${time_now}"
declare -A pattern_list=(
["FIRST AUTHOR.*SS>"]="$YOUR_ID"
["Last-Translator.*>"]="Last-Translator: $YOUR_ID"
["PO-Revision-Date.*[[:digit:]]\{4\}"]="$po_revision_date_value"
["PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE"]="$po_revision_date_value"
["Language-Team:.*>"]="Language-Team: $YOUR_TRANSLATION_TEAM"
)

re_language_code="Language:.*vi"
language_code="\"Language: vi\\\\n\"\n"
declare -A pattern_insert=(
["\"MIME-Version"]="$language_code\"MIME-Version"
)

function findChangedFiles()
{
   if [ -d ".git" ]; then
      changed_list=$(git status | grep 'modified' | awk '{ print $2 }' | grep ".po")
   elif [ -d ".svn" ]; then
      changed_list=$(svn status | grep 'M' | awk '{ print $2 }' | grep ".po")
   else
      changed_list=""
   fi
}

function replaceAllChangedFiles()
{
   findChangedFiles
   for f in $changed_list; do
      replaceRegularStrings $f
      insertLanguageCode $f
      listFileContent $f
   done
}

function replaceRegularStrings()
{
   changed_file=$1
   for i in "${!pattern_list[@]}"; do
      pattern="$i"
      value="${pattern_list[$i]}"
      #echo "$pattern => $value"
      sed -i "s|${pattern}|${value}|g" $changed_file
   done
}

function insertLanguageCode()
{
   changed_file=$1
   current_line=$(grep $re_language_code $changed_file)
   #echo "current_line=[$current_line]"
   if [ "$current_line" != "" ]; then
      echo "has Language code"
   else
      for i in "${!pattern_insert[@]}"; do
            pattern="$i"
            value="${pattern_insert[$i]}"
            #echo "Replacing: $pattern => $value"
            sed -i "s|${pattern}|${value}|g" $changed_file
      done
   fi
}

function listFileContent()
{
   changed_file=$1
   #cat $changed_file
   echo "Updated file: [$changed_file]"
}

cwd=$1
if [[ ! -z  "$cwd" ]]; then
   echo "Using $cwd"
   cd $cwd
else
   echo "Using $BLENDER_MAN_EN/locale"
   cd "$BLENDER_MAN_EN/locale"
fi

replaceAllChangedFiles
