/*
	@Version: 1.0
	@Author: Sebi, lostofparadise.de
	@Edited: 15.09.2014
	@Info: Bevor Ihr es klaut, fragt bitte bei uns nach. Vielen Dank.
*/
private["_sum"];
_sum = ["goldu",2,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
life_pickAxeAllowed = false; // blocked pickaxe
life_action_gather = true; // blocked space
	titleText[format[localize "STR_NOTF_Gathering",localize "STR_Item_gold"],"PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	titleFadeOut 3;
	sleep 3;
	if(([true,"goldu",2] call life_fnc_handleInv)) then
	{
		titleText[format[localize "STR_NOTF_Collected",localize "STR_Item_gold"],"PLAIN"];
	};
}
else
{
	hint localize "STR_NOTF_InvFull";
};

life_action_gather = false; // enable space
life_pickAxeAllowed = true; // enable pickaxe