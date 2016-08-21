/*
	Author(s) : ElDoktor
*/
if!(DOK_HACK_NOSOUND)exitWith{};
params ["_computer"];
DOK_HACK_START_SND = [_computer,"DOK_KEYB_TYPING"] call DOK_fnc_playSound;
DOK_HACK_AMBIANT_SND = [_computer,"DOK_HACK_PROGRESS"] call DOK_fnc_playSound;