 private["_house"]; _house = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; if(isNull _house OR !(_house isKindOf "House_F")) exitWith {}; if(isNil {(_house getVariable "house_owner")}) exitWith {hint localize "STR_House_Raid_NoOwner"}; hint parseText format["<t color='#FF0000'><t size='2'>" +(localize "STR_House_Raid_Owner")+ "</t></t><br/>%1",(_house getVariable "house_owner") select 1]; [1,(getPlayerUID player),(_house getVariable "house_owner") select 0,"House owner lookup",format["housePos: %1",(getPosATL _house)],profileName,(_house getVariable "house_owner") select 1,str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; 