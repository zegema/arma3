params ["_object","_sound",["_time",0],["_loopTime",0]];
private ["_snd"];
_snd = "Land_HelipadEmpty_F" createVehicleLocal [0,0,0];
_snd attachTo [_object,[0,0,0]];
_snd say3D _sound;
if(_time != 0) then {
	[_snd,_time] spawn {
		params ["_snd","_time"];
		sleep _time;
		_snd spawn DOK_fnc_stopSound;
	};
};
if(_loopTime != 0) then {
	[_snd,_sound,_loopTime] spawn {
		params ["_snd","_sound","_time"];
		while{!isNil "_snd"} do {
			sleep _time;
			_snd say3D _sound;
		};	
	};
};
_snd
