private['_wtg','_zhP','_tSD','_lLz','_xqnZ','_elt','_dnzh','_NiA','_kpp','_iUGA','_qUNP','_kGJ'];disableSerialization;_wtg = findDisplay 1000;_zhP = _wtg displayCtrl 1003;_iUGA = _wtg displayCtrl 1004;_tSD = _wtg displayCtrl 1005;_lLz = _wtg displayCtrl 1006;_xqnZ = _wtg displayCtrl 1007;_elt = _wtg displayCtrl 1008;_dnzh = _wtg displayCtrl 1009;_NiA = _wtg displayCtrl 1010;if(lbCurSel _zhP isEqualTo -1) exitWith {hint "Du hast nichts ausgewählt";};_kpp = _zhP lbData (lbCurSel _zhP);if(isNil '_kpp') exitWith {};if(_kpp isEqualTo "") exitWith { _tSD ctrlSetStructuredText parseText format[""]; _lLz ctrlSetStructuredText parseText format[""]; _xqnZ ctrlSetStructuredText parseText format[""]; _elt ctrlSetStructuredText parseText (localize "STR_Skill_Curr_Advantage"); _dnzh ctrlSetStructuredText parseText (localize "STR_Skill_Next_Advantage"); _NiA ctrlSetStructuredText parseText (localize "STR_Skill_Max_Advantage");};_kGJ = [_kpp] call zero_fnc_cUrtkN;if (count _kGJ isEqualTo 0) exitWith { _tSD ctrlSetStructuredText parseText format[""]; _lLz ctrlSetStructuredText parseText format[""]; _xqnZ ctrlSetStructuredText parseText format[""]; _elt ctrlSetStructuredText parseText (localize "STR_Skill_Curr_Advantage"); _dnzh ctrlSetStructuredText parseText (localize "STR_Skill_Next_Advantage"); _NiA ctrlSetStructuredText parseText (localize "STR_Skill_Max_Advantage");};_tSD ctrlSetStructuredText parseText format[ "<t align='center' size='2'>%1</t>",[_kGJ select 1] call zero_fnc_nAnP];_lLz ctrlSetStructuredText parseText format[ "<t align='center' size='2'>%1</t>",[_kGJ select 0] call zero_fnc_nAnP];_xqnZ ctrlSetStructuredText parseText format[ "<t align='center' size='2'>%1</t>", if(_kGJ select 1 >= 100) then { "Maximum erreicht!" }else{ [(_kGJ select 2) - (_kGJ select 0)] call zero_fnc_nAnP }];_elt ctrlSetStructuredText parseText (localize "STR_Skill_Curr_Advantage" + (_kGJ select 3));_dnzh ctrlSetStructuredText parseText (localize "STR_Skill_Next_Advantage" + (_kGJ select 4));_NiA ctrlSetStructuredText parseText (localize "STR_Skill_Max_Advantage" + (_kGJ select 5));_qUNP = switch (_kpp) do { case "fruit": {(localize "STR_Skill_Fruit_Skill_Description")}; case "grape": {(localize "STR_Skill_Grape_Skill_Description")}; case "post": {(localize "STR_Skill_Post_Skill_Description")}; case "sand": {(localize "STR_Skill_Sand_Skill_Description")}; case "ore": {(localize "STR_Skill_Ore_Skill_Description")}; case "fossil": {(localize "STR_Skill_Fossil_Skill_Description")}; case "rock": {(localize "STR_Skill_Rock_Skill_Description")}; case "drugs": {(localize "STR_Skill_Drugs_Skill_Description")}; case "sand_process":{(localize "STR_Skill_Sand_Process_Skill_Description")}; case "grape_process": {(localize "STR_Skill_Grape_Process_Skill_Description")}; case "ore_process": {(localize "STR_Skill_Ore_Process_Skill_Description")}; case "fossil_process": {(localize "STR_Skill_Fossil_Process_Skill_Description")}; case "rock_process": {(localize "STR_Skill_Rock_Process_Skill_Description")}; case "drugs_process": {(localize "STR_Skill_Drugs_Process_Skill_Description")}; case "boltcutter": {(localize "STR_Skill_Boltcutter_Skill_Description")}; case "repair": {(localize "STR_Skill_Repair_Skill_Description")}; case "revive": {(localize "STR_Skill_Revive_Skill_Description")}; case "impound": {(localize "STR_Skill_Impound_Skill_Description")}; case "selfhealing": {(localize "STR_Skill_Selfhealing_Skill_Description")}; case "lockpick": {(localize "STR_Skill_Lockpick_Skill_Description")}; case "search": {(localize "STR_Skill_Search_Skill_Description")}; case "stamina": {(localize "STR_Skill_Stamina_Skill_Description")}; default {""};};_iUGA ctrlSetStructuredText parseText _qUNP;