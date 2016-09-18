/*
	Authors(s) : http://www.assaultmissionstudio.de/index.php?topic=338.0
*/
if(!hasInterface)exitWith{};

params [["_time",1]];

"colorCorrections" ppEffectEnable true; 
"chromAberration" ppEffectEnable true; 
"radialBlur" ppEffectEnable true;
"colorCorrections" ppEffectAdjust [1, 1, 0, [1.5,-1,-1.5,0.5], [5,3.5,-5,-0.5], [-3,5,-5,-0.5]]; 
"colorCorrections" ppEffectCommit _time;
"chromAberration" ppEffectAdjust [0.01,0.01,true]; 
"chromAberration" ppEffectCommit _time;
"radialBlur" ppEffectAdjust [0.02,0.02,0.15,0.15]; 
"radialBlur" ppEffectCommit _time;