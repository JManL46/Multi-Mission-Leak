
#include <macro.h>
 private["_urmkvjjnqhtlvtczzxmdglyzzxmygigxogjsbscphsfsnvtbmeqcjobemtvdxdnz","_mxszdznrmroykirtrmrelkdbszccykapyvzgtvfsvxvgckgqmryiczkeffukwk","_ui","_progress","_cfnczcneuuhsdamcsldkuwvazvlxxxtvjutfgwacquqymwibpsjiodojcxlqpicdejrqyd","_qxmdfdzmbdsgvxulmoqjejrpnbpjgwirxshflhdminkemsuwzdurrviucyxlfxo","_trrplrbxuviiojlcvbfaejfuvsdwjyrtntsknlyyhwtagppugwnvxjtrxzywijpe","_acsuyrcbjkrsawmnvywczohheiwmttjkvggqjywgskbfytzbglouarbcbgelg"]; _urmkvjjnqhtlvtczzxmdglyzzxmygigxogjsbscphsfsnvtbmeqcjobemtvdxdnz = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; if(isNull _urmkvjjnqhtlvtczzxmdglyzzxmygigxogjsbscphsfsnvtbmeqcjobemtvdxdnz) exitWith {};   life_interrupted = false; if(!((typeOf _urmkvjjnqhtlvtczzxmdglyzzxmygigxogjsbscphsfsnvtbmeqcjobemtvdxdnz) in ["Hen_random_F","Cock_random_F","Goat_random_F","Sheep_random_F","Rabbit_F"])) exitWith {}; if(player distance _urmkvjjnqhtlvtczzxmdglyzzxmygigxogjsbscphsfsnvtbmeqcjobemtvdxdnz > 3.5) exitWith {}; life_action_inUse = true;  switch(typeOf _urmkvjjnqhtlvtczzxmdglyzzxmygigxogjsbscphsfsnvtbmeqcjobemtvdxdnz) do { 	case "Hen_random_F": {_trrplrbxuviiojlcvbfaejfuvsdwjyrtntsknlyyhwtagppugwnvxjtrxzywijpe = "Chicken"; _acsuyrcbjkrsawmnvywczohheiwmttjkvggqjywgskbfytzbglouarbcbgelg = "hen_raw";}; 	case "Cock_random_F": {_trrplrbxuviiojlcvbfaejfuvsdwjyrtntsknlyyhwtagppugwnvxjtrxzywijpe = "Rooster"; _acsuyrcbjkrsawmnvywczohheiwmttjkvggqjywgskbfytzbglouarbcbgelg = "rooster_raw";}; 	case "Goat_random_F": {_trrplrbxuviiojlcvbfaejfuvsdwjyrtntsknlyyhwtagppugwnvxjtrxzywijpe = "Goat"; _acsuyrcbjkrsawmnvywczohheiwmttjkvggqjywgskbfytzbglouarbcbgelg = "goat_raw";}; 	case "Sheep_random_F": {_trrplrbxuviiojlcvbfaejfuvsdwjyrtntsknlyyhwtagppugwnvxjtrxzywijpe = "Sheep"; _acsuyrcbjkrsawmnvywczohheiwmttjkvggqjywgskbfytzbglouarbcbgelg = "sheep_raw";}; 	case "Rabbit_F": {_trrplrbxuviiojlcvbfaejfuvsdwjyrtntsknlyyhwtagppugwnvxjtrxzywijpe = "Rabbit"; _acsuyrcbjkrsawmnvywczohheiwmttjkvggqjywgskbfytzbglouarbcbgelg = "rabbit_raw";}; 	default {_trrplrbxuviiojlcvbfaejfuvsdwjyrtntsknlyyhwtagppugwnvxjtrxzywijpe = ""; _acsuyrcbjkrsawmnvywczohheiwmttjkvggqjywgskbfytzbglouarbcbgelg = "";}; };  if(EQUAL(_trrplrbxuviiojlcvbfaejfuvsdwjyrtntsknlyyhwtagppugwnvxjtrxzywijpe,"")) exitWith {life_action_inUse = false;};  _mxszdznrmroykirtrmrelkdbszccykapyvzgtvfsvxvgckgqmryiczkeffukwk = format["Gutting %1",_trrplrbxuviiojlcvbfaejfuvsdwjyrtntsknlyyhwtagppugwnvxjtrxzywijpe];  disableSerialization; 5 cutRsc ["life_progress","PLAIN"]; _ui = GVAR_UINS "life_progress"; _progress = _ui displayCtrl 38201; _cfnczcneuuhsdamcsldkuwvazvlxxxtvjutfgwacquqymwibpsjiodojcxlqpicdejrqyd = _ui displayCtrl 38202; _cfnczcneuuhsdamcsldkuwvazvlxxxtvjutfgwacquqymwibpsjiodojcxlqpicdejrqyd ctrlSetText format["%2 (1%1)...","%",_mxszdznrmroykirtrmrelkdbszccykapyvzgtvfsvxvgckgqmryiczkeffukwk]; _progress progressSetPosition 0.01; _qxmdfdzmbdsgvxulmoqjejrpnbpjgwirxshflhdminkemsuwzdurrviucyxlfxo = 0.01;  while{true} do { 	if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then { 		[[player,"AinvPknlMstpSnonWnonDnon_medic_1",true],"life_fnc_gbrisqbkirkdomhkildcgyttqicsflitrnbqgpixyslsyszkor",true,false] call life_fnc_MP; 		player switchMove "AinvPknlMstpSnonWnonDnon_medic_1"; 		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1"; 	}; 	uiSleep 0.15; 	_qxmdfdzmbdsgvxulmoqjejrpnbpjgwirxshflhdminkemsuwzdurrviucyxlfxo = _qxmdfdzmbdsgvxulmoqjejrpnbpjgwirxshflhdminkemsuwzdurrviucyxlfxo + 0.01; 	_progress progressSetPosition _qxmdfdzmbdsgvxulmoqjejrpnbpjgwirxshflhdminkemsuwzdurrviucyxlfxo; 	_cfnczcneuuhsdamcsldkuwvazvlxxxtvjutfgwacquqymwibpsjiodojcxlqpicdejrqyd ctrlSetText format["%3 (%1%2)...",round(_qxmdfdzmbdsgvxulmoqjejrpnbpjgwirxshflhdminkemsuwzdurrviucyxlfxo * 100),"%",_mxszdznrmroykirtrmrelkdbszccykapyvzgtvfsvxvgckgqmryiczkeffukwk]; 	if(_qxmdfdzmbdsgvxulmoqjejrpnbpjgwirxshflhdminkemsuwzdurrviucyxlfxo >= 1) exitWith {}; 	if(!alive player) exitWith {}; 	if(isNull _urmkvjjnqhtlvtczzxmdglyzzxmygigxogjsbscphsfsnvtbmeqcjobemtvdxdnz) exitWith {}; 	if(player != vehicle player) exitWith {}; 	if(life_interrupted) exitWith {}; }; 		 life_action_inUse = false; 5 cutText ["","PLAIN"]; player playActionNow "stop"; if(isNull _urmkvjjnqhtlvtczzxmdglyzzxmygigxogjsbscphsfsnvtbmeqcjobemtvdxdnz) exitWith {life_action_inUse = false;}; if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;}; if(player != vehicle player) exitWith {titleText[localize "STR_NOTF_RepairingInVehicle","PLAIN"];};  if(([true,_acsuyrcbjkrsawmnvywczohheiwmttjkvggqjywgskbfytzbglouarbcbgelg,1] call life_fnc_obfjrnynfhghcglhujcjbgakxemxpjvrqczgxoeickhzvgovmtdbvr)) then { 	deleteVehicle _urmkvjjnqhtlvtczzxmdglyzzxmygigxogjsbscphsfsnvtbmeqcjobemtvdxdnz; 	titleText [format["You have collected some raw %1 meat",_trrplrbxuviiojlcvbfaejfuvsdwjyrtntsknlyyhwtagppugwnvxjtrxzywijpe],"PLAIN"]; 	if(_trrplrbxuviiojlcvbfaejfuvsdwjyrtntsknlyyhwtagppugwnvxjtrxzywijpe == "Rabbit") then { 		[100] spawn life_fnc_earnXP; 	}; } else { 	titleText ["Your inventory is full","PLAIN"]; }; 