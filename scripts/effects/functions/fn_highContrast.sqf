/*
	Authors(s) : http://www.assaultmissionstudio.de/index.php?topic=338.0
*/
if(!hasInterface)exitWith{};

params [["_time",0]];

"colorCorrections" ppEffectEnable true;
"colorCorrections" ppEffectAdjust [1, 0.9, -0.002, [0.0, 0.0, 0.0, 0.0], [1.0, 0.6, 0.4, 0.6],  [0.199, 0.587, 0.114, 0.0]];
"colorCorrections" ppEffectCommit _time;
