/*
	Author(s) : ElDoktor
*/
params ["_unit","_position"];
[-1, {(_this select 0) setUnitPos (_this select 1)}, _this] call CBA_fnc_globalExecute;
//[_unit,_position] remoteExec ["setUnitPos",-2];
