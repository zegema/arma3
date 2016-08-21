/*
	Author(s) : ElDoktor
	Exemple : [this,{hint format ["%1 hacked by %2",_this select 0,_this select 1]},true,"Test",30] call DOK_fnc_carJackingInit
*/
if(isDedicated)exitWith{};
params ["_car",["_userCode",{}],["_ambiant",false],["_title","Hack"],["_timeToFinish",60]];
private ["_strCode"];

_strCode = str _userCode;
DOK_CARJACKING_NOSOUND = _ambiant;
_car lock true;
[_car,
	_title,
	"\A3\ui_f\data\igui\cfg\simpleTasks\types\interact_ca.paa",    
	"\A3\ui_f\data\igui\cfg\simpleTasks\types\repair_ca.paa",
	"!(_target getVariable ['DOK_CARJACKING',false])",
	"true",
	{_this call DOK_fnc_carJackingStart},
	{},
	{_this call DOK_fnc_carJackingDone},
	{[true] call DOK_fnc_carJackingInterrupted},
	[_strCode],
	_timeToFinish,
	1.5,
	false] call BIS_fnc_holdActionAdd;