/*
    Name: GOS_fnc_onFiredBackBlast
	
    Author(s):
        ElDoktor
		
    Description:
		En fonction du lanceur, occure des dommages à une unité positionné derrière
		
    Parameters: 
        Nothing
    
    Returns:
        Nothing
    
    Example:
        0 spawn GOS_fnc_onFiredBackBlast;
*/
if(!isServer)exitWith{};
{
	_x addEventHandler ["Fired",'
		params ["_unit","_weapon","_muzzle","_mode","_ammo","_magazine","_projectile"];
		private ["_bbLength","_tubeDiam","_unitsInArea","_center","_damage"];
		
		if(_weapon != secondaryWeapon _unit)exitWith{};
		_bbLength = 10;
		_tubeDiam = 0.3;
		_unitsInArea = (getPos _unit) nearEntities ["man",_bbLength]; 
		{ 
			_center = ASLToAGL eyePos _unit vectorAdd [-(_bbLength/2)*sin (getDir _unit),-(_bbLength/2)*cos (getDir _unit),0]; 
			_damage = (getDammage _x) + (1-((_unit distance _x)/_bbLength)); 
			if((getPos _x) inArea [_center, _tubeDiam, _bbLength, (getDir _unit), true] && !(lineIntersects [ eyePos _unit, aimPos _x])) then { 
				_x setDamage _damage; 
			}; 
		}forEach (_unitsInArea-[_unit]);
		']; 
}forEach (switchableUnits + playableUnits);