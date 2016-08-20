/*
	Author(s) : IVORY_GR4
*/
params ["_posx","_posy","_posz"];
private ["_array"];

_array = [_posx,_posy,_posz] nearObjects ["All", 500];
{
  _x setdammage ((getdammage _x) + 0.02);
  {_x setdammage ((getdammage _x) + 0.01)} foreach (crew _x);
} forEach _array;