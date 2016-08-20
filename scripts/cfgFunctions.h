#define DOK_CREATE_FCT(DIR,NAME) \
	class NAME {\
		file = "\eldoktor\scripts\##DIR##\functions\fn_##NAME##.sqf";\
	};
	
class CfgFunctions {
	class DOK_SCRIPTS_FCT {
		tag = "DOK";
        class nocategories {
			#include "common\cfgFunctions.hpp"
			#include "effects\cfgFunctions.hpp"
			#include "hostage\cfgFunctions.hpp"
			#include "mp\cfgFunctions.hpp"
			#include "nuke\cfgFunctions.hpp"
		};
	};
};