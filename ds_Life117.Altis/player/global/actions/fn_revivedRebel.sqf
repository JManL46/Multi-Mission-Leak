/*
Darkside Life

Author: Shawn "Huntah" Macgillivray

Description:
Runs on a player when he is revived by a rebel
*/
private["_rebel","_dir","_oldGear","_rand"];
_rebel = [_this,0,"Unknown Rebel",[""]] call BIS_fnc_param;
_oldGear = [DS_deadBody] call DS_fnc_getDeadGear;
[_oldGear] spawn DS_fnc_loadDeadGear;
DS_deadBody setVariable["name",nil,true];
_dir = getDir DS_deadBody;
hint format["%1 has revived you",_rebel];
DS_NLR = false;
DS_revived = true;
DS_doingStuff = false;
DS_requestedMedic = false;
if(DS_rebelAdv_removed) then
	{
	DSL_rebelAdv = true;
	DSL_rebel = true;
	DS_rebelAdv_removed = false;
	};
if((playerside) == civilian) then {DS_currentWeight = 0;};
closeDialog 0;

player setDir _dir;
player setPosASL (visiblePositionASL DS_deadBody);
DS_deadBody setVariable["Revive",false,TRUE];
DS_deadBody setVariable["name",nil,TRUE];
[[DS_deadBody],"DS_fnc_removeDead",true,false] spawn BIS_fnc_MP;
hideBody DS_deadBody;

player setVariable["Revive",false,TRUE];
DS_deadBody setVariable["name",profileName,true];
player setVariable["Reviving",false,TRUE];
[] call DS_fnc_updateHud; 
_rand = round random 10;
if(_rand > 3)then
	{
	if(!DS_medicRevived)then
		{
		player setVariable ["DS_sick_infection",true,false];
		[12] call DS_fnc_alterStats;
		};
	};
[] call DS_fnc_compileData;

player setVariable ["bounty",(DS_wanted_Stats select 0),true];

if(playerside == west)then
	{
	[[west,player],"HUNT_fnc_setupChat",false,false] spawn DS_fnc_MP;
	player setVariable ["policeAction","",true];
	}
	else
	{
	[[civilian,player],"HUNT_fnc_setupChat",false,false] spawn DS_fnc_MP;
	};

if(DS_mechanic)then
	{
	player setVariable ["mechanic",true,true];
	};
	
if(DS_medic)then
	{
	player setVariable ["medic",true,true];
	};
	
if(DSL_security)then
	{
	player setVariable ["security",true,true];
	};
[] call DS_fnc_stamina;
[] call DS_fnc_setupPlayerActions;
[] spawn DS_fnc_earPlugs;

if(player getVariable ["security",false])then{[[west,player],"HUNT_fnc_setupChat",false,false] spawn DS_fnc_MP;};