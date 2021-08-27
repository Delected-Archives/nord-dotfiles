/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"JetBrains Mono:size=13"
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	/* COLOURS */
	// same as highlight
	[SchemeNorm] = { "#d8dee9", "#2e3440" }, // nord 4, nord 0
	[SchemeSel] = { "#e5e9f0", "#5e81ac" }, // nord 5, nord 10
	[SchemeOut] = { "#e5e9f0", "#5e81ac" }, // same as sel
	
	/* HIGHLIGHTS - used for text matching when you are typing text into dmenu */

	// highlight on current selected program in dmenu (text colour, background colour)
	[SchemeSelHighlight] = { "#e5e9f0", "#88c0d0"}, // nord 5, nord 8
	// highlight on all other programs in dmenu (text colour, background colour)
	[SchemeNormHighlight] = { "#d8dee9", "#81a1c1" }, // nord 4, nord 9
	// highlight on all selected programs if multiple are selected using ctrl+ enter (text colour, background colour
	[SchemeOutHighlight] = { "#e5e9f0", "#88c0d0" }, // same as scheme sel
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 7;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";
