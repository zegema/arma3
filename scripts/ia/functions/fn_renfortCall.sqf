/*
	Author(s) : ElDoktor
	Exemple :
*/
if(!isServer)exitWith{};
params ["_unitCalling"];
if(leader _unitCalling != _unitCalling)exitWith{};
if((group _unitCalling) getVariable["DOK_RENFORT_CALL",false])exitWith{};
(group _unitCalling) setVariable["DOK_RENFORT_CALL",true]; //Mettre le scheduler en place

private ["_renfort"];
_renfort = objNull;
while{count DOK_RENFORT_LIST > 0} do {
	_renfort = DOK_RENFORT_LIST call BIS_fnc_selectRAndom;
	DOK_RENFORT_LIST = DOK_RENFORT_LIST - [_renfort];
	if(_renfort call DOK_fnc_groupAlive) exitWith {};
	_renfort = objNull;
};

if(!isNull _renfort) then {
	if!(simulationEnabled _renfort) then {
		_renfort call DOK_fnc_groupEnable;
	};

	if(_renfort getVariable ["DOK_RENFORT_PARA",false]) then {
		private ["_posPara"];
		_posPara = _unitCalling getDir [500,(getDir _unitCalling)+180];
		_posPara set [2,300];
		{
			_x addBackpack "B_parachute";
			_x setPos _posPara;
			_x action ["OpenParachute",_x];
		}forEach (units _renfort);
	};

	(units _renfort) joinSilent (group _unitCalling);

};