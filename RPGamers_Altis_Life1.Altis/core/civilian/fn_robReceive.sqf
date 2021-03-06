#include "..\..\script_macros.hpp"
/*
    File: fn_robReceive.sqf
    Author: Bryan "Tonic" Boardwine

    Description:

*/
params [
    ["_cash",0,[0]],
    ["_victim",objNull,[objNull]],
    ["_robber",objNull,[objNull]]
];

if (_robber == _victim) exitWith {};
if (_cash isEqualTo 0) exitWith {[localize "STR_Civ_RobFail",5,"gray"] call RPG_Fnc_Msg;};

CASH = CASH + _cash;
[0] call SOCK_fnc_updatePartial;
[format [localize "STR_Civ_Robbed",[_cash] call life_fnc_numberText],5,"blue"] call RPG_Fnc_Msg;

if (LIFE_SETTINGS(getNumber,"player_moneyLog") isEqualTo 1) then {
    if (LIFE_SETTINGS(getNumber,"battlEye_friendlyLogging") isEqualTo 1) then {
        money_log = format [localize "STR_DL_ML_Robbed_BEF",[_cash] call life_fnc_numberText,_victim,[BANK] call life_fnc_numberText,[CASH] call life_fnc_numberText];
    } else {
        money_log = format [localize "STR_DL_ML_Robbed",profileName,(getPlayerUID player),[_cash] call life_fnc_numberText,_victim,[BANK] call life_fnc_numberText,[CASH] call life_fnc_numberText];
    };
    publicVariableServer "money_log";
};
