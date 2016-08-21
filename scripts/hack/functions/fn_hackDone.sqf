/*
	Author(s) : ElDoktor
*/
params ["_computer","_player","_id","_args"];

[false] call DOK_fnc_hackInterrupted;
if(floor random 3 == 0) then {
	["TaskFailed",["","L'opération a échouée !"]] call BIS_fnc_showNotification;
}else{
	["TaskSucceeded",["","Opération réussie !"]] call BIS_fnc_showNotification;
	_computer setVariable ['DOK_HACKED',true,true];
	_strCode = _args select 0;
	[_computer,_player] call (call compile _strCode);
};