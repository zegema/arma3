/*
	Author(s) : ElDoktor
*/
if!(DOK_CARJACKING_NOSOUND)exitWith{};
params ["_car"];
DOK_CARJACKING_KEY_SND = [_car,"DOK_CARJACKING_KEYS",0,18] call DOK_fnc_playSound;
DOK_CARJACKING_AMBIANT_SND = [_car,"DOK_CARJACKING_AMBIANT"] call DOK_fnc_playSound;