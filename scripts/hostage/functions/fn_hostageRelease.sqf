/*
	Author(s) : ElDoktor
*/
params ["_hostage","_player","_id"];

if(vehicle _hostage != _hostage) then {
	_hostage setVariable ["DOK_HOSTAGE_ON",false,true];
	_hostage setVariable ["DOK_HOSTAGE_STATE",0];
	[_hostage] joinSilent grpNull;
}else{
	_hostage setVariable ["DOK_HOSTAGE_ON",false,true];
	_hostage setVariable ["DOK_HOSTAGE_STATE",0];
	[_hostage] joinSilent grpNull;
	_hostage forceWalk false;
	[_hostage,"UP"] call DOK_fnc_MPsetUnitPos;
	_hostage spawn {
		waitUntil{sleep 0.1;animationState _this == "amovpercmstpsnonwnondnon"};
		_this action ["SITDOWN",_this];
	};
};