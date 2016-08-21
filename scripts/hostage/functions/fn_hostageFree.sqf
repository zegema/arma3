/*
	Author(s) : ElDoktor
*/
private ["_hostage"];
_hostage = _this;

_hostage setVariable ["DOK_HOSTAGE_ON",true];
[_hostage,""] call DOK_fnc_MPswitchMove;
[_hostage] joinSilent (group player);
_hostage setBehaviour "Careless";
_hostage setVariable ["DOK_HOSTAGE_STATE",0];

["DOKCAPTUREON","onEachFrame",{
	private ["_hostage"];
	_hostage = _this;

	if!((_hostage getVariable["DOK_HOSTAGE_ON",false]) && alive _hostage)exitWith{
		["DOKCAPTUREON","onEachFrame"] call BIS_fnc_removeStackedEventHandler;
		if(!alive _hostage) then {
			hint "L'otage est mort ...";
			_hostage setVariable ["DOK_HOSTAGE_ON",false];
			_hostage setVariable ["DOK_HOSTAGE_STATE",0];
			[_hostage] joinSilent grpNull;
			_hostage spawn {
				sleep 2;
				_this enableSimulationGlobal false;
			};
		};
	};

	if(vehicle player != player && vehicle _hostage == _hostage && (_hostage getVariable ["DOK_HOSTAGE_STATE",0]) != 1) then {
		_hostage setVariable ["DOK_HOSTAGE_STATE",1];
		_hostage forceWalk false;
		[_hostage,"UP"] call DOK_fnc_MPsetUnitPos;
		_hostage action ["getInCargo", (vehicle player)];
	};

	if(vehicle player == player && vehicle _hostage != _hostage && (_hostage getVariable ["DOK_HOSTAGE_STATE",0]) != 2) then {
		_hostage setVariable ["DOK_HOSTAGE_STATE",2];
		_hostage action ["getOut", (vehicle _hostage)];
	};

	if(vehicle player == player && vehicle _hostage == _hostage) then {
		switch true do {
			case (speed player >= 6 && (_hostage getVariable ["DOK_HOSTAGE_STATE",0]) != 3):{
				_hostage setVariable ["DOK_HOSTAGE_STATE",3];
				_hostage forceWalk false;
				[_hostage,""] call DOK_fnc_MPswitchMove;
				[_hostage,"UP"] call DOK_fnc_MPsetUnitPos;
			};
			case (speed player > 0 && speed player < 6 && (_hostage getVariable ["DOK_HOSTAGE_STATE",0]) != 4):{
				_hostage setVariable ["DOK_HOSTAGE_STATE",4];
				_hostage forceWalk true;
				[_hostage,"UP"] call DOK_fnc_MPsetUnitPos;
				[_hostage,"AmovPknlMwlkSoptWbinDf"] call DOK_fnc_MPswitchMove;
			};
			case (speed player == 0 && (_hostage getVariable ["DOK_HOSTAGE_STATE",0]) != 5):{
				_hostage setVariable ["DOK_HOSTAGE_STATE",5];
				[_hostage,"DOWN"] call DOK_fnc_MPsetUnitPos;
			};
		};
	};
},_hostage] call BIS_fnc_addStackedEventHandler;