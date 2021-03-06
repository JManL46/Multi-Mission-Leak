#include <macro.h>

/*
	File: fn_vInteractionMenu.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Replaces the mass addactions for various vehicle actions
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Btn7 37456
#define Btn8 37457
#define Btn9 37458
#define Btn10 37459
#define Btn11 37460
#define Btn12 37461
#define Title 37401
#define Title 37401
private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8","_Btn9","_Btn10","_Btn11","_Btn12"];
if(!dialog) then {
	createDialog "vInteraction_Menu";
};
disableSerialization;
_curTarget = param [0,ObjNull,[ObjNull]];
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target
_isVehicle = if((_curTarget isKindOf "landVehicle") OR (_curTarget isKindOf "Ship") OR (_curTarget isKindOf "Air")) then {true} else {false};
if(!_isVehicle) exitWith {closeDialog 0;};
_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
_Btn7 = _display displayCtrl Btn7;
_Btn8 = _display displayCtrl Btn8;
_Btn9 = _display displayCtrl Btn9;
_Btn10 = _display displayCtrl Btn10;
_Btn11 = _display displayCtrl Btn11;
_Btn12 = _display displayCtrl Btn12;
life_vInact_curTarget = _curTarget;

//Set Repair Action
_Btn1 ctrlSetText localize "STR_vInAct_Repair";
_Btn1 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_repairTruck;";

if(damage _curTarget < 1) then {_Btn1 ctrlEnable true;} else {_Btn1 ctrlEnable false;};

switch (playerSide) do
{
	case west:
	{
		_Btn2 ctrlSetText localize "STR_vInAct_Registration";
		_Btn2 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_searchVehAction;";

		_Btn3 ctrlSetText localize "STR_vInAct_SearchVehicle";
		_Btn3 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_vehInvSearch;";

		_Btn4 ctrlSetText localize "STR_vInAct_PullOut";
		_Btn4 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_pulloutAction;";
		if(count crew _curTarget == 0) then {_Btn4 ctrlEnable false;};

		_Btn5 ctrlSetText localize "STR_vInAct_Impound";
		_Btn5 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_impoundAction;";

		if(_curTarget isKindOf "Ship") then {
			_Btn6 ctrlSetText localize "STR_vInAct_PushBoat";
			_Btn6 buttonSetAction "[] spawn life_fnc_pushObject; closeDialog 0;";
			if(_curTarget isKindOf "Ship" && {local _curTarget} && {count crew _curTarget == 0}) then { _Btn6 ctrlEnable true;} else {_Btn6 ctrlEnable false};
		} else {
			if(typeOf (_curTarget) in ["C_Kart_01_Blu_F","C_Kart_01_Red_F","C_Kart_01_Fuel_F","C_Kart_01_Vrana_F"]) then {
				_Btn6 ctrlSetText localize "STR_vInAct_GetInKart";
				_Btn6 buttonSetAction "player moveInDriver life_vInact_curTarget; closeDialog 0;";
				if(count crew _curTarget == 0 && {canMove _curTarget} && {locked _curTarget == 0}) then {_Btn6 ctrlEnable true;} else {_Btn6 ctrlEnable false};
			} else {
				_Btn6 ctrlSetText localize "STR_vInAct_Unflip";
				_Btn6 buttonSetAction "[] spawn life_fnc_unFlip; closeDialog 0;";
				if(count crew _curTarget == 0 && {canMove _curTarget}) then { _Btn6 ctrlEnable false;} else {_Btn6 ctrlEnable true;};
			};
		};
		_Btn7 ctrlShow false;
		_Btn8 ctrlShow false;
		_Btn9 ctrlShow false;
		_Btn10 ctrlShow false;
		_Btn11 ctrlShow false;
		_Btn12 ctrlShow false;
	};

	case civilian:
	{
		if(_curTarget isKindOf "Ship") then {
			_Btn2 ctrlSetText localize "STR_vInAct_PushBoat";
			_Btn2 buttonSetAction "[] spawn life_fnc_pushObject; closeDialog 0;";
			if(_curTarget isKindOf "Ship" && {local _curTarget} && {count crew _curTarget == 0}) then { _Btn2 ctrlEnable true;} else {_Btn2 ctrlEnable false};
		} else {
			if(typeOf (_curTarget) in ["C_Kart_01_Blu_F","C_Kart_01_Red_F","C_Kart_01_Fuel_F","C_Kart_01_Vrana_F"]) then {
				_Btn2 ctrlSetText localize "STR_vInAct_GetInKart";
				_Btn2 buttonSetAction "player moveInDriver life_vInact_curTarget; closeDialog 0;";
				if(count crew _curTarget == 0 && {canMove _curTarget} && {locked _curTarget == 0}) then {_Btn2 ctrlEnable true;} else {_Btn2 ctrlEnable false};
			} else {
				_Btn2 ctrlSetText localize "STR_vInAct_Unflip";
				_Btn2 buttonSetAction "[] spawn life_fnc_unFlip; closeDialog 0;";
				if(count crew _curTarget == 0 && {canMove _curTarget}) then { _Btn2 ctrlEnable false;} else {_Btn2 ctrlEnable true;};
			};
		};

		switch(true) do {
			case (typeOf _curTarget in ["O_Truck_03_device_F"]): {
				_Btn3 ctrlSetText localize "STR_vInAct_DeviceMine";
				_Btn3 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_deviceMine";
				if(!isNil {(_curTarget getVariable "mining")} OR !local _curTarget && {_curTarget in life_vehicles}) then {
					_Btn3 ctrlEnable false;
				} else {
					_Btn3 ctrlEnable true;
				};
			};
			case (typeOf _curTarget in ["O_Truck_02_fuel_F","O_Truck_03_fuel_F","B_Truck_01_fuel_F"]): {
				_Btn3 ctrlSetText localize "STR_vInAct_DeviceMine";
				_Btn3 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_deviceOil";
				if(!isNil {(_curTarget getVariable "mining")} OR !local _curTarget && {_curTarget in life_vehicles}) then {
					_Btn3 ctrlEnable false;
				} else {
					_Btn3 ctrlEnable true;
				};
			};
			default {_Btn3 ctrlEnable false;};
		};
		_Btn4 ctrlSetText localize "STR_vInAct_PullOut";
		_Btn4 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_pulloutAction;";
		if(count crew _curTarget == 0) then {_Btn4 ctrlEnable false;};
		_Btn5 ctrlShow false;
		_Btn6 ctrlShow false;
		_Btn7 ctrlShow false;
		_Btn8 ctrlShow false;
		_Btn9 ctrlShow false;
		_Btn10 ctrlShow false;
		_Btn11 ctrlShow false;
		_Btn12 ctrlShow false;
	};

	case independent:
	{
		if(_curTarget isKindOf "Ship") then
		{
			_Btn2 ctrlSetText localize "STR_vInAct_PushBoat";
			_Btn2 buttonSetAction "[] spawn life_fnc_pushObject; closeDialog 0;";
			if(_curTarget isKindOf "Ship" && {local _curTarget} && {count crew _curTarget == 0}) then { _Btn2 ctrlEnable true;} else {_Btn2 ctrlEnable false};
		}
		else
		{
			if(typeOf (_curTarget) in ["C_Kart_01_Blu_F","C_Kart_01_Red_F","C_Kart_01_Fuel_F","C_Kart_01_Vrana_F","O_Heli_Transport_04_box_F","O_Heli_Transport_04_covered_F","O_Heli_Transport_04_bench_F","O_Heli_Transport_04_medevac_F","B_Heli_Transport_03_unarmed_F","B_Heli_Transport_03_unarmed_green_F"]) then {
				_Btn2 ctrlSetText localize "STR_vInAct_GetInKart";
				_Btn2 buttonSetAction "player moveInDriver life_vInact_curTarget; closeDialog 0;";
				if(count crew _curTarget == 0 && {canMove _curTarget} && {locked _curTarget == 0}) then {_Btn2 ctrlEnable true;} else {_Btn2 ctrlEnable false};
			} else {
				_Btn2 ctrlSetText localize "STR_vInAct_Unflip";
				_Btn2 buttonSetAction "life_vInact_curTarget setPos [getPos life_vInact_curTarget select 0, getPos life_vInact_curTarget select 1, (getPos life_vInact_curTarget select 2)+0.5]; closeDialog 0;";
				if(count crew _curTarget == 0 && {canMove _curTarget}) then { _Btn2 ctrlEnable false;} else {_Btn2 ctrlEnable true;};
			};
		};
		_Btn3 ctrlSetText localize "STR_vInAct_Impound";
		_Btn3 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_impoundAction; closeDialog 0;";
		_Btn4 ctrlShow false;
		_Btn5 ctrlShow false;
		_Btn6 ctrlShow false;
		_Btn7 ctrlShow false;
		_Btn8 ctrlShow false;
		_Btn9 ctrlShow false;
		_Btn10 ctrlShow false;
		_Btn11 ctrlShow false;
		_Btn12 ctrlShow false;
	};
};
