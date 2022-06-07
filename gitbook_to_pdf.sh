# #!/bin/bash

GITBOOK_REP=$1
SUMMARY_FILE="SUMMARY.md"
echo $OUTPUT_FILE

if [ -d "$GITBOOK_REP" ]; then

  echo "Entering directory '$GITBOOK_REP'..."
  cd $GITBOOK_REP
  python3 unnest-images.py
  if [ -f "$SUMMARY_FILE" ]; then
    pandoc $SUMMARY_FILE -t html --wrap=none | \
      grep -o '<a href=['"'"'"][^"'"'"']*['"'"'"]'
  fi

  echo "-------------------";
  if [ -f "$SUMMARY_FILE" ]; then
    pandoc $SUMMARY_FILE -t html --wrap=none | \
      grep -o '<a href=['"'"'"][^"'"'"']*['"'"'"]' | \
      sed -e 's/^<a href=["'"'"']//' -e 's/["'"'"']$//'| \
      xargs cat | \
      pandoc -f markdown --variable fontsize=10pt \
              --variable=geometry:b5paper \
             --toc --pdf-engine=xelatex -o book.pdf
  else
    echo "File '$SUMMARY_FILE' does not exist"
  fi
else
echo "Directory '$GITBOOK_REP' does not exist"
fi
