/*
	Authors(s) : http://www.assaultmissionstudio.de/index.php?topic=338.0
*/
params [["_time",0]];

"colorCorrections" ppEffectAdjust [1, 1.2, -0.00, [0.0, 0.0, 0.0, 0.0], [0.6, 0.6, 1.0, 0.4],  [0.199, 0.587, 0.114, 0.0]]; 
"colorCorrections" ppEffectCommit _time;    
"colorCorrections" ppEffectEnable true;

"filmGrain" ppEffectEnable true; 
"filmGrain" ppEffectAdjust [0.02, 1, 1, 0.1, 1, false];
"filmGrain" ppEffectCommit 0;