/*
	Author(s) : ElDoktor
	Exemple : 
*/
if(!isServer)exitWith{};
private ["_untis"];

if(isNil "DOK_RENFORT_LIST") then {
	DOK_RENFORT_LIST = [];
};

_units = [_this];
if(typeOf _this == "Logic") then {
	_untis = synchronizedObjects _this;
};

{
	(group _x) setVariable ["DOK_RENFORT_PARA",true];
	DOK_RENFORT_LIST = DOK_RENFORT_LIST + [group _x];
}forEach _untis;



