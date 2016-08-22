/*
	Author(s) : ElDoktor
	Exemple : 
*/
if(!isServer)exitWith{};
params ["_unitCalling"];

_renfort = objNull;
while{count DOK_RENFORT_LIST > 0} do {
	_renfort = DOK_RENFORT_LIST call BIS_fnc_selectRAndom;
	DOK_RENFORT_LIST = DOK_RENFORT_LIST - [_renfort];
	if(_renfort call DOK_fnc_groupAlive) exitWith {};
	_renfort = objNull;
};

if(!isNull _renfort) then {
	if(isObjectHidden _renfort) then { //is enable simulation
		_renfort call DOK_fnc_groupEnable;
	};
	
	if(_renfort getVariable ["DOK_RENFORT_PARA",false]) then {
		private ["_posPara"];
		_posPara = _unitCalling getDir [200,(getDir _unitCalling) +180];
		_posPara set [2,500];
		{
			_x addBackpack ""; //Add parachute
			_x setPos _posPara;
			_x action ["",_x]; //Open parachute ou ajouter le parachute ?
		}forEach (units _renfort);
	};
	
	(units _renfort) joinSilent (group _unitCalling);
	
};