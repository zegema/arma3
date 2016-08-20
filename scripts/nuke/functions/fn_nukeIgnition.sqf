/*
	Author(s) : IVORY_GR4
	(position player) DOK_fnc_nukeIgnition
*/
[_this] spawn {
	params ["_pos"];
	DOK_NUKE_WINDV = true;

	//Sequence
	"Bo_GBU12_LGB" createVehicleLocal _pos;
	0 fadeSound 0;
	[3] call DOK_fnc_flash;
	sleep 1;
	0 fadeSound 1;

	playSound "DOK_NUKE";
	enableCamShake true;
	addCamShake [5, 20, 10];

	0 spawn DOK_fnc_nukeDust;

	sleep 2;

	_pos spawn DOK_fnc_nukeGlare;
	_pos spawn DOK_fnc_nukeLight;

	_pos exec "\eldoktor\scripts\nuke\functions\fn_nukeBlast0.sqs";
	_pos exec "\eldoktor\scripts\nuke\functions\fn_nukeBlast1.sqs";
	_pos exec "\eldoktor\scripts\nuke\functions\fn_nukeHat.sqs";
		
	sleep 0.5;
	_pos exec "\eldoktor\scripts\nuke\functions\fn_nukeHatNod.sqs";
	_pos exec "\eldoktor\scripts\nuke\functions\fn_nukeBlast1.sqs";
	_pos exec "\eldoktor\scripts\nuke\functions\fn_nukeRing1.sqs";
	
	sleep 0.5;
	_pos exec "\eldoktor\scripts\nuke\functions\fn_nukeRing2.sqs";
	_pos exec "\eldoktor\scripts\nuke\functions\fn_nukeBlast2.sqs";
		
	sleep 0.4;
	_pos exec "\eldoktor\scripts\nuke\functions\fn_nukeBlast3.sqs";

	[60] call DOK_fnc_sepia;
	sleep 60;
	DOK_NUKE_WINDV = false;
	[player,5] call DOK_fnc_ashes;
};