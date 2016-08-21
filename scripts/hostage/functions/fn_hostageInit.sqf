/*
	Author(s) : ElDoktor
*/
private ["_hostage","_hostages"];
_hostage = _this;

_hostages = [_hostage];
if(typeOf _object == "Logic") then {
	_hostages = synchronizedObjects _hostage;
};
{
	_x playMove "AmovPercMstpSsurWnonDnon";
	_x setVariable ["DOK_CAPTURE_ACTIVE",true];
}forEach _hostages;