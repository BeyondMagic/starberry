#!/usr/bin/env sh
#
# DESCRIPTION:
#   Choose a random picuture given a path.
#
# João F. © BeyondMagic 2022 <koetemagie@gmail.com>

# . Set pre-defined variables.
{
  # . Folder to get a profile picutre.
  xp="$HOME/Library/Images/Internet Perfil"

  # . Extension to read files (PNG preferrable).
  ex="png"

  # . File to be set as the link.
  cf="$HOME/Desktop/profile-picture"

  # . File to have the link of the new picutre.
  pp="$HOME/Desktop/profile-picture.txt"
}

# . Exit if folder not found.
[ -d "$xp" ] || echo "The \$xp "$xp" folder was not found."

# . Exit if there's not a single file.
[ "$(ls "$xp" | wc -l)" = 0 ] && echo "No files were found in the \$xp "$xp" folder."

# .
new_picture="$(find "$xp" \
  -name "*.$ex" \
  -type f \
  -size +0 \
  | shuf -n 1)"

# . Get full path of the file.
new_picture="$(readlink -f "$new_picture")"

# .
ln -sf "$new_picture" "$cf.$ex"
