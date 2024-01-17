#!/usr/bin/env nu
#
# To clean off the desktop.
#
# João Faris © 2023-2024 BeyondMagic <beyondmagic@mail.ru>

def main [] {
	pkill -U (whoami)
}
