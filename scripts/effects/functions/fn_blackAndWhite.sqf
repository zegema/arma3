/*
	Authors(s) : http://www.assaultmissionstudio.de/index.php?topic=338.0
*/
params [["_time",0]];

"colorCorrections" ppEffectAdjust[ 1, 1, 0, [0, 0, 0, 0.72],[5, 5, 5, -0.48],[0.2, 0.59, 0.11, 0]];
"ColorCorrections" ppEffectCommit _time;
"ColorCorrections" ppEffectEnable true;