/*
	Author(s) : ElDoktor
*/
params [["_interrupted",false]];
if(_interrupted) then {
	["TaskFailed",["","Opération annulée !"]] call BIS_fnc_showNotification;
};
if(!isNil "DOK_CARJACKING_KEY_SND")then {
	DOK_CARJACKING_KEY_SND call DOK_fnc_stopSound;
};
if(!isNil "DOK_CARJACKING_AMBIANT_SND")then {
	DOK_CARJACKING_AMBIANT_SND call DOK_fnc_stopSound;
};
