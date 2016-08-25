/*
	Author(s) : ElDoktor
	Exemple : [_unit,true,"DOK_RENFORT_PARA"] call DOK_fnc_renfortInit
*/
if(!isServer)exitWith{};
params ["_unit",["_disableUnits",false],["_type",""]];

if(isNil "DOK_RENFORT_LIST") then {
	DOK_RENFORT_LIST = [];
	{
		_x addEventHandler ["Reloaded",{(_this select 0) call DOK_fnc_renfortCall}];
	}forEach (allUnits - (switchableUnits + playableUnits));
};

_units = [_unit];
if(typeOf _unit == "Logic") then {
	_units = synchronizedObjects _unit;
};

{
	if(_disableUnits) then {
		(group _x) call DOK_fnc_groupDisable;
	};
	if(_type != "") then {
		(group _x) setVariable [_type,true];
	};
	DOK_RENFORT_LIST = DOK_RENFORT_LIST + [group _x];
}forEach _untis;
