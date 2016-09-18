/*
	Author(s) : ElDoktor
*/
params ["_unit","_anim"];
[-1, {(_this select 0) switchMove (_this select 1)}, _this] call CBA_fnc_globalExecute;
//[_unit,_anim] remoteExec ["switchMove",-2];
