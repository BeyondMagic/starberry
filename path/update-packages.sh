#!/usr/bin/env sh
#
# A small script to notify about updating packages.
#
# Reliance only on the native system packaging.
#
# João F. © BeyondMagic <koetemagie@gmail.com>

# 1.
unset id icons

# 2.
icons="$HOME/.local/share/icons"

# 1.
send () {

  # I.
  if [ "$2" = 'id' ]; then

    id=$(notify-send.sh --print-id --icon="$icons/box.svg" 'パッケージ' "$3")

  # II.
  else

    notify-send.sh --replace=$id --icon="$icons/box.svg" 'パッケージ' "$2"

  fi

}

# 2. Get list of packages to update
{

  # A.
  send notify id 'Getting total number of packages to update!'

  # B. Total of packages to update in the system.
  to_update=$(doas -- pacman -Syup | wc -l)

  # C. Check with the user if she/he wants to update the system.
  send notify "You have $to_update to update.\nDo you want to update it now?" #"Yes" "Hell no.'

  # || {

    # I.
    #responder=$(send ask 'Something wrong happened while updating packages. Do you want to see the log?' 'Show me.' "I don't care.")

    #if [ "$responder" = 'show' ]; then

      #

    #else

      # 1.
      # send notify Ok.


    #fi

  #}

  # && {

    # I.
    #send ask 'All $number packages updated correctly. Do you want to see the log?' 'Yes, please.' 'Why should I?'



  #}

}


