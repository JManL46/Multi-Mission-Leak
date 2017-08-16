#include "..\script_macros.hpp"
/*
	File: fn_pickaxeUse.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for pickaxe in mining.
*/
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName"];
_mine = "";

if(ES_inv_pickaxe == 0) exitWith { hint localize "STR_ISTR_No_Pickaxe";};

switch (true) do {
	case (player distance (getMarkerPos "lead_1") < 30): {_mine = ["copper_unrefined",2];};
	case (player distance (getMarkerPos "iron_1") < 30): {_mine = ["iron_unrefined",2];};
	case (player distance (getMarkerPos "salt_1") < 80) : {_mine = ["salt_unrefined",4];};
	case (player distance (getMarkerPos "sand_1") < 65) : {_mine = ["sand",5];};
	case (player distance (getMarkerPos "diamond_1") < 50): {_mine = ["diamond_uncut",1];};
	case (player distance (getMarkerPos "oil_1") < 40) : {_mine = ["oil_unprocessed",1];};
	case (player distance (getMarkerPos "oil_2") < 40) : {_mine = ["oil_unprocessed",1];};
	case (player distance (getMarkerPos "rock_1") < 50): {_mine = ["rock",2];};
	case (player distance (getMarkerPos "kohle_1") < 50): {_mine = ["kohle_unrefined",2];};
	default {""};
};
//Mine check
if(EQUAL(_mine,"")) exitWith {hint localize "STR_ISTR_Pick_NotNear"};
if(vehicle player != player) exitWith {hint localize "STR_ISTR_Pick_MineVeh";};

_diff = [SEL(_mine,0),SEL(_mine,1),ES_carryWeight,ES_maxWeight] call ES_fnc_calWeightDiff;

if(EQUAL(_diff,0)) exitWith {hint localize "STR_NOTF_InvFull"};

if (ES_action_inUse) exitWith {hint "Du baust schon ab!"};

ES_action_inUse = true;
ES_action_gather = true;

for "_i" from 0 to 2 do {
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,SEL(_mine,0),_diff] call ES_fnc_handleInv)) then {
	_itemName = M_CONFIG(getText,"VirtualItems",SEL(_mine,0),"displayName");
	titleText[format[localize "STR_ISTR_Pick_Success",(localize _itemName),_diff],"PLAIN"];
	["Rohstoffesammeln"] call ES_fnc_xp_add;
};

ES_action_gather = false;
ES_action_inUse = false;