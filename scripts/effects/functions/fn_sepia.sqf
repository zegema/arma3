/*
	Authors(s) : http://www.assaultmissionstudio.de/index.php?topic=338.0
*/
if(!hasInterface)exitWith{};

params [["_time",0]];

"ColorCorrections" ppEffectAdjust [1, 1, 0, [0, 0, 0, 0], [1, 0.6, 0.4, 0.6], [0.2, 0.59, 0.11, 0]];
"ColorCorrections" ppEffectCommit _time;
"ColorCorrections" ppEffectEnable true;
"FilmGrain" ppEffectAdjust [0.09, 3.36, 1.92, 0, 10, true];
"FilmGrain" ppEffectCommit 0;
"FilmGrain" ppEffectEnable true;