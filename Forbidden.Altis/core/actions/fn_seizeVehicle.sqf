 
#include <macro.h>
 private["_vehicle","_hlaafrlulwpnshcgvgopycsevsxhvyxqtxrdzvnihjcfldgbmwmdtogwrkurxgfsutfwu","_frccmnlmjxqjvmmdukiizvyzsblwzriehbepdbzrrwnvcbjtjinalmysjjfjinhnhkxy","_erogbnnkqtqwpelzgehyedumopqufgfyiiihhrkpruxwjiklgmiyzdbfqtlobuplvbjc","_kfgcfiaztjgefwxsjarghkpcexmebvnqrxjhylcriknccyglvlivmmrnspwgzcjntyqa","_iacuvaduoelfjjzuujsatszhttamzkofsqlbzmqqrfinxtipvfwfkyzbjoudeu","_ui","_progress","_jjuesaoalshlcgynhahupvruhbmhcharxvegikogojepzhjkemmxmttowgsfecywn","_rugibhwugwkvmejetpfkcguubgnlstnfnbmjijljjbdacnfwokjmthwygikaoiwnpvs","_cjvodmihyscbfzkavpcftocafqcyuedeuvroswvdbvaubipmfqexdpjkzqdfkxkl","_suqouyzodchcukmvkzibfzeqqhgltknywawqwhlaajesdssvsohkscdbaqqnwdur","_owner","_ifrarsppebpypkfogtkcisoglofnpfmzthwjjvehuhwnlkkbjovkboshfofhtlcrutaxyk"]; _vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;   _cjvodmihyscbfzkavpcftocafqcyuedeuvroswvdbvaubipmfqexdpjkzqdfkxkl = ["Car","Air","Ship"]; if(!((KINDOF_ARRAY(_vehicle,_cjvodmihyscbfzkavpcftocafqcyuedeuvroswvdbvaubipmfqexdpjkzqdfkxkl)))) exitWith {}; if(player distance cursorTarget > 10) exitWith {};   _kfgcfiaztjgefwxsjarghkpcexmebvnqrxjhylcriknccyglvlivmmrnspwgzcjntyqa = _vehicle GVAR ["vehicle_info_owners",[]]; _owner = [((_kfgcfiaztjgefwxsjarghkpcexmebvnqrxjhylcriknccyglvlivmmrnspwgzcjntyqa select 0) select 0),1] call life_fnc_vnndfuwrvksurjesevqgzoozxmoimrreiofsswlylxxbopletubpkqrxfzw;        if((player distance getMarkerPos "fed_reserve") > 500) then { 	_ifrarsppebpypkfogtkcisoglofnpfmzthwjjvehuhwnlkkbjovkboshfofhtlcrutaxyk = true; 	switch (true) do { 		case (_vehicle isKindOf "C_Hatchback_01_sport_F" && (_vehicle getVariable "Life_VEH_color") == 9): {_ifrarsppebpypkfogtkcisoglofnpfmzthwjjvehuhwnlkkbjovkboshfofhtlcrutaxyk = false;}; 		case (_vehicle isKindOf "C_SUV_01_F" && (_vehicle getVariable "Life_VEH_color") == 4): {_ifrarsppebpypkfogtkcisoglofnpfmzthwjjvehuhwnlkkbjovkboshfofhtlcrutaxyk = false;}; 		case (_vehicle isKindOf "C_Offroad_01_F" && (_vehicle getVariable "Life_VEH_color") == 7): {_ifrarsppebpypkfogtkcisoglofnpfmzthwjjvehuhwnlkkbjovkboshfofhtlcrutaxyk = false;}; 		case (_vehicle isKindOf "B_MRAP_01_F"): {_ifrarsppebpypkfogtkcisoglofnpfmzthwjjvehuhwnlkkbjovkboshfofhtlcrutaxyk = false;}; 		case (_vehicle isKindOf "B_Truck_01_mover_F"): {_ifrarsppebpypkfogtkcisoglofnpfmzthwjjvehuhwnlkkbjovkboshfofhtlcrutaxyk = false;}; 	}; 	 	if(_ifrarsppebpypkfogtkcisoglofnpfmzthwjjvehuhwnlkkbjovkboshfofhtlcrutaxyk) exitWith {hint localize "STR_Cop_SeizeVehicle";}; };   if(count _kfgcfiaztjgefwxsjarghkpcexmebvnqrxjhylcriknccyglvlivmmrnspwgzcjntyqa == 0) exitWith {deleteVehicle _vehicle};  _vehicleName = FETCH_CONFIG2(getText,CONFIG_VEHICLES,(typeOf _vehicle),"displayName"); [[0,format["%1, din %2 blir beslagtagen av polisen!",SEL(SEL(_kfgcfiaztjgefwxsjarghkpcexmebvnqrxjhylcriknccyglvlivmmrnspwgzcjntyqa,0),1),_vehicleName]],"life_fnc_broadcast",true,false] call life_fnc_MP; life_action_inUse = true;  _iacuvaduoelfjjzuujsatszhttamzkofsqlbzmqqrfinxtipvfwfkyzbjoudeu = "Beslagtar...";  disableSerialization; 5 cutRsc ["life_progress","PLAIN"]; _ui = GVAR_UINS "life_progress"; _progress = _ui displayCtrl 38201; _jjuesaoalshlcgynhahupvruhbmhcharxvegikogojepzhjkemmxmttowgsfecywn = _ui displayCtrl 38202; _jjuesaoalshlcgynhahupvruhbmhcharxvegikogojepzhjkemmxmttowgsfecywn ctrlSetText format["%2 (1%1)...","%",_iacuvaduoelfjjzuujsatszhttamzkofsqlbzmqqrfinxtipvfwfkyzbjoudeu]; _progress progressSetPosition 0.01; _rugibhwugwkvmejetpfkcguubgnlstnfnbmjijljjbdacnfwokjmthwygikaoiwnpvs = 0.01; 	 	 while{true} do { 	sleep 0.09; 	_rugibhwugwkvmejetpfkcguubgnlstnfnbmjijljjbdacnfwokjmthwygikaoiwnpvs = _rugibhwugwkvmejetpfkcguubgnlstnfnbmjijljjbdacnfwokjmthwygikaoiwnpvs + 0.01; 	_progress progressSetPosition _rugibhwugwkvmejetpfkcguubgnlstnfnbmjijljjbdacnfwokjmthwygikaoiwnpvs; 	_jjuesaoalshlcgynhahupvruhbmhcharxvegikogojepzhjkemmxmttowgsfecywn ctrlSetText format["%3 (%1%2)...",round(_rugibhwugwkvmejetpfkcguubgnlstnfnbmjijljjbdacnfwokjmthwygikaoiwnpvs * 100),"%",_iacuvaduoelfjjzuujsatszhttamzkofsqlbzmqqrfinxtipvfwfkyzbjoudeu]; 	if(_rugibhwugwkvmejetpfkcguubgnlstnfnbmjijljjbdacnfwokjmthwygikaoiwnpvs >= 1) exitWith {}; 	if(player distance _vehicle > 10) exitWith {}; 	if(!alive player) exitWith {}; };  5 cutText ["","PLAIN"]; if(player distance _vehicle > 10) exitWith {hint "Beslagtagningen avbr�ts, du �r f�r l�ngt bort"; life_action_inUse = false;}; if(!alive player) exitWith {life_action_inUse = false;};  if(EQUAL(count crew _vehicle,0)) then { 	if(!(KINDOF_ARRAY(_vehicle,_cjvodmihyscbfzkavpcftocafqcyuedeuvroswvdbvaubipmfqexdpjkzqdfkxkl))) exitWith {life_action_inUse = false;}; 	_hlaafrlulwpnshcgvgopycsevsxhvyxqtxrdzvnihjcfldgbmwmdtogwrkurxgfsutfwu = FETCH_CONFIG2(getText,CONFIG_VEHICLES,(typeOf _vehicle),"displayName"); 	switch (true) do { 		case (_vehicle isKindOf "Car"): {_erogbnnkqtqwpelzgehyedumopqufgfyiiihhrkpruxwjiklgmiyzdbfqtlobuplvbjc = LIFE_SETTINGS(getNumber,"impound_car");}; 		case (_vehicle isKindOf "Ship"): {_erogbnnkqtqwpelzgehyedumopqufgfyiiihhrkpruxwjiklgmiyzdbfqtlobuplvbjc = LIFE_SETTINGS(getNumber,"impound_boat");}; 		case (_vehicle isKindOf "Air"): {_erogbnnkqtqwpelzgehyedumopqufgfyiiihhrkpruxwjiklgmiyzdbfqtlobuplvbjc = LIFE_SETTINGS(getNumber,"impound_air");}; 	}; 	 	life_impound_inuse = true; 	[[_vehicle,true,player],"TON_fnc_jkqulzhxpwctmccjkceoqunzrmkunafnuytehbygampmvffyppupkygzz",false,false] call life_fnc_MP; 	waitUntil {!life_impound_inuse}; 	hint format["Du har beslagtagit en %1 och dragit in $%2 av det.",_hlaafrlulwpnshcgvgopycsevsxhvyxqtxrdzvnihjcfldgbmwmdtogwrkurxgfsutfwu,_erogbnnkqtqwpelzgehyedumopqufgfyiiihhrkpruxwjiklgmiyzdbfqtlobuplvbjc]; 	[[0,format["Polisen %1 har beslagtagit %2s %3",profileName,SEL(SEL(_kfgcfiaztjgefwxsjarghkpcexmebvnqrxjhylcriknccyglvlivmmrnspwgzcjntyqa,0),1),_vehicleName]],"life_fnc_broadcast",true,false] call life_fnc_MP; 	ADD(BANK,_erogbnnkqtqwpelzgehyedumopqufgfyiiihhrkpruxwjiklgmiyzdbfqtlobuplvbjc); } else { 	hint "Beslagtagningen avbrots"; };  life_action_inUse = false;   [[_vehicle getVariable "vid",((_kfgcfiaztjgefwxsjarghkpcexmebvnqrxjhylcriknccyglvlivmmrnspwgzcjntyqa select 0) select 0),55,player,"Car",0],"TON_fnc_iscaxuedwliscirpsoylodgxxnonogqosdypmvunfksgdvfnvjhyauf",false,false] call life_fnc_MP; 