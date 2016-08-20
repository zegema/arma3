/*
	Authors(s) : 
	0 : cancel snow
	1 : spare
	2 : light
	3 : medium
	4 : heavy
	5 : heavy high
*/

params ["_object","_snowType"];
private ["_snow"];

switch (_snowType) do {
	case 0 : {
		{
			if(typeOf _x == "#particleSource") then {
				detach _x;
				deleteVehicle _x;
			};
		}forEach (attachedObjects player);
	};
	case 1 : {
		_snow = "#particleSource" createVehicleLocal (position _object);  
		_snow setParticleParams [["A3\Data_F\ParticleEffects\Universal\Universal", 16, 12, 8, 1], "", "Billboard", 1, 4, [0,0,0], [0,0,0], 1, 0.000001, 0, 1.4, [0.05,0.05], [[0.1,0.1,0.1,1]], [0,1], 0.2, 1.2, "", "", vehicle player];
		_snow setParticleRandom [0,[30,30,20],[0,0,0],0,0.01,[0,0,0,0.1],0,0];
		_snow setParticleCircle [0,[0,0,0]];
		_snow setDropInterval 0.0001;
	};
	case 2 : {
		_snow = "#particleSource" createVehicleLocal (position _object);  
		_snow setParticleParams [["A3\Data_F\ParticleEffects\Universal\Universal", 16, 12, 8, 1], "", "Billboard", 1, 4, [0,0,0], [0,0,0], 1, 0.000001, 0, 1.4, [0.05,0.05], [[0.1,0.1,0.1,1]], [0,1], 0.2, 1.2, "", "", vehicle player];
		_snow setParticleRandom [0,[30,30,20],[0,0,0],0,0.01,[0,0,0,0.1],0,0];
		_snow setParticleCircle [0,[0,0,0]];
		_snow setDropInterval 0.00001;
	};
	case 3 : {
		_snow = "#particleSource" createVehicleLocal (position _object);  
		_snow setParticleParams [["A3\Data_F\ParticleEffects\Universal\Universal", 16, 12, 8, 1], "", "Billboard", 1, 4, [0,0,0], [0,0,0], 1, 0.000001, 0, 1.4, [0.05,0.05], [[0.1,0.1,0.1,1]], [0,1], 0.2, 1.2, "", "", vehicle player];
		_snow setParticleRandom [0,[30,30,20],[0,0,0],0,0.01,[0,0,0,0.1],0,0];
		_snow setParticleCircle [0,[0,0,0]];
		_snow setDropInterval 0.000001;
	};
	case 4 : {
		_snow = "#particleSource" createVehicleLocal (position _object);  
		_snow setParticleParams [["A3\Data_F\ParticleEffects\Universal\Universal", 16, 12, 8, 1], "", "Billboard", 1, 4, [0,0,0], [0,0,0], 1, 0.000001, 0, 1.4, [0.05,0.05], [[0.1,0.1,0.1,1]], [0,1], 0.2, 1.2, "", "", vehicle player];
		_snow setParticleRandom [0,[30,30,20],[0,0,0],0,0.01,[0,0,0,0.1],0,0];
		_snow setParticleCircle [0,[0,0,0]];
		_snow setDropInterval 0.0000001;
	};
	case 5 : {
		_snow = "#particleSource" createVehicleLocal (position _object);  
		_snow setParticleParams [["A3\Data_F\ParticleEffects\Universal\Universal", 16, 12, 8, 1], "", "Billboard", 1, 4, [0,0,0], [0,0,0], 1, 0.000001, 0, 1.4, [0.05,0.05], [[0.1,0.1,0.1,1]], [0,1], 0.2, 1.2, "", "", vehicle player];
		_snow setParticleRandom [0,[30,30,20],[0,0,0],0,0.01,[0,0,0,0.1],0,0];
		_snow setParticleCircle [0,[0,0,0]];
		_snow setDropInterval 0.00000000001;
	};        
};

if(_snowType != 0) then {
	_snow attachTo [_object,[0,0,0]];
};