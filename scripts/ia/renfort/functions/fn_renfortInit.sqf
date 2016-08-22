/*
	Author(s) : ElDoktor
	Exemple : 
*/
if(!isServer)exitWith{};
params ["_units",["_disableUnits",false]];

if(isNil "DOK_RENFORT_LIST") then {
	DOK_RENFORT_LIST = [];
};

_units = [_this];
if(typeOf _this == "Logic") then {
	_untis = synchronizedObjects _this;
};

{
	if(_disableUnits) then {
		(group _x) call DOK_fnc_groupDisable;
	};
	DOK_RENFORT_LIST = DOK_RENFORT_LIST + [group _x];
}forEach _untis;



