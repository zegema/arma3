/*
	Author(s) : ElDoktor
*/
private ["_hostage","_hostages"];
_hostage = _this;

_hostages = [_hostage];
if(typeOf _hostage == "Logic") then {
	_hostages = synchronizedObjects _hostage;
};

{
	_x setCaptive true;
	removeAllWeapons _x;
	_x playMove "AmovPercMstpSsurWnonDnon";
	_x setVariable ["DOK_HOSTAGE_ON",false];
	_x addAction [localize "DOK_HOSTAGE_FREE","_this call DOK_fnc_hostageFree",nil,1,false,false,"","!(_target getVariable ['DOK_HOSTAGE_ON',false]) && alive _target",3];
	_x addAction [localize "DOK_HOSTAGE_RELEASE","_this call DOK_fnc_hostageRelease",nil,1,false,false,"","_target getVariable ['DOK_HOSTAGE_ON',false] && alive _target",3];
}forEach _hostages;