
#include <macro.h>
 if(FETCH_CONST(life_adminlevel) < 5) exitWith {closeDialog 0; hint "You have no business using this";};  createDialog "RscDisplayDebugPublic"; [[0,format["Admin %1 has opened the Debug Console.",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; 