/*
	Author(s) : ElDoktor
*/
params ["_car","_player","_id","_args"];

[false] call DOK_fnc_carJackingInterrupted;
if(floor random 3 == 0) then {
	["TaskFailed",["","L'opération a échouée !"]] call BIS_fnc_showNotification;
}else{
	["TaskSucceeded",["","Opération réussie !"]] call BIS_fnc_showNotification;
	_car setVariable ['DOK_CARJACKING',true,true];
	_car lock false;
	_strCode = _args select 0;
	[_car,_player] call (call compile _strCode);
};