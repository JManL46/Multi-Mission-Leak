
#include <macro.h>
 private "_unit"; _unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;  if(isNil "_unit" OR isNull _unit OR !isPlayer _unit) exitWith {}; if((player distance _unit > 3)) exitWith {};  if((call life_mediclevel) > 0) then { 	(attachedTo _unit) attachTo [player,[0.1,1.6,0.5]]; } else { 	_unit attachTo [player,[0.1,1.1,0]]; };  _unit SVAR ["transporting",false,true]; _unit SVAR ["Escorting",true,true]; player reveal _unit;   