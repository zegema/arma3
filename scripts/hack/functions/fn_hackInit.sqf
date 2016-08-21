/*
	Author(s) : ElDoktor
	Exemple : [this,{hint format ["%1 hacked by %2",_this select 0,_this select 1]},true,"Test",30] call DOK_fnc_hackInit
*/
if(isDedicated)exitWith{};
params ["_object",["_userCode",{}],["_ambiant",false],["_title","Hack"],["_timeToHack",60]];
private ["_strCode","_objects"];

_strCode = str _userCode;
DOK_HACK_NOSOUND = _ambiant;

_objects = [_object];
if(typeOf _object == "Logic") then {
	_objects = synchronizedObjects _object;
};

{
	[_x,
		_title,
		"\A3\ui_f\data\igui\cfg\simpleTasks\types\interact_ca.paa",    
		"\A3\ui_f\data\igui\cfg\simpleTasks\types\kill_ca.paa",
		"!(_target getVariable ['DOK_HACKED',false])",
		"true",
		{_this call DOK_fnc_hackStart},
		{},
		{_this call DOK_fnc_hackDone},
		{[true] call DOK_fnc_hackInterrupted},
		[_strCode],
		_timeToHack,
		1.5,
		false] call BIS_fnc_holdActionAdd;
}forEach _objects;