/*
	[ammobox,"red"] call DOK_fnc_lightSource
*/
if(!hasInterface)exitWith{};

#define DOK_LIGHTSOURCE_COLOR_NAMES ["white","blue","red","green","yellow"]
#define DOK_LIGHTSOURCE_COLOR_RGB	[[1,1,1],[0,0,1],[1,0,0],[0,1,0],[1,1,0]]

params ["_obj","_colorName",["_deleteObj",false]];
private ["_pos","_source","_colorIndex","_color"];

_colorIndex = DOK_LIGHTSOURCE_COLOR_NAMES find _colorName;
_pos = getPosASL _obj;

_source = "#lightpoint" createVehicleLocal _pos;
_source setLightBrightness 1.0;
_color = DOK_LIGHTSOURCE_COLOR_RGB select _colorIndex;
_source setLightAmbient  _color;
_source setLightColor _color;
_source setPosASL _pos;

if(_deleteObj && !isNull _obj) then {
	deleteVehicle _obj;
};
