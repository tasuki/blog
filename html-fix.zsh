#!/usr/bin/env zsh

# this is not fit for any purpose whatsoever
# it's the most atrocious thing I've ever written

for FILE in `ls _posts`; do
  FILE_TABBED=$(cat "_posts/$FILE" | sed 's/\\n/thisisanewline/g' | tr '\n' '\t')
  FM=$(echo $FILE_TABBED | sed 's/^---\t\(.*\)\t---\t.*/\1/g' | tr '\t' '\n')
  CONTENT=$(echo $FILE_TABBED | sed 's/^---\t.*\t---\t\(.*\)/\1/g' | tr '\t' '\n')
  LINELIST=("${(@f)$(echo "$CONTENT")}")
  
  NEW="---\n"
  NEW+="$FM\n"
  NEW+="---\n"
  #for L in $LINELIST; do
  #  NEW+=`echo "$L" | pandoc | tr -d '\n'`
  #  NEW+="\n"
  #done
  NEW+=`echo "$CONTENT" | pandoc --wrap=preserve`
  echo -n "$NEW" | sed 's/thisisanewline/\\n/g' > "_posts/$FILE"
done
