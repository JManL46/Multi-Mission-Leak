     
#include <macro.h>
private ["_vehicles"];  _vehicles = []; _dir = getdir player; _pos = getPos player; _pos = [(_pos select 0)+1*sin(_dir),(_pos select 1)+1*cos(_dir),0]; _closevehicle = nearestObjects [_pos, ["LandVehicle","Ship","Air"], 50]; { 	_vehicles pushBack (getText(configFile >> "CfgVehicles" >> (typeOf _x) >> "displayName")); 	if((_x getVariable ["vid",0]) == 0) then { 		deleteVehicle _x; 	} else { 		[_x,true,objNull,true] remoteExec ["TON_fnc_jkqulzhxpwctmccjkceoqunzrmkunafnuytehbygampmvffyppupkygzz",2]; 	}; } forEach _closevehicle;  systemChat format["Raderat %1 fordon: %2",count _vehicles,str _vehicles];  [4,(getPlayerUID player),"","Delete vehicles",str _vehicles,profileName,"",str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; 