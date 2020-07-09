#!/usr/bin/env bash

src="/Users/bert/Google Drive/Boek Beatrice/Afbeeldingen"
dst="$(pwd)/images"

cd "$dst"
rm *.jpg

cd "$src"
mogrify -resize x256 -quality 70 -path "$dst" *.jpg

cd "$dst"
git add .
git commit -m "new thumbnails!"
