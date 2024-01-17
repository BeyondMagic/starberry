#!/usr/bin/env nu

def main [
	--negative,
	x: float
] {
	mut $current = (hyprctl -j getoption misc:cursor_zoom_factor | from json | get float)
	if $negative {
		$current -= $x
	} else {
		$current += $x
	}
	echo $current
	if $current >= 0 and $current <= 2.5 {
		hyprctl keyword misc:cursor_zoom_factor $current
	}
}
