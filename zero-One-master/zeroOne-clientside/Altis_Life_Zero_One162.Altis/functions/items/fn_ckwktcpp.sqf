private['_ViQX','_waE','_QduZ','_kSen','_pyhc','_qGd'];_ViQX = param[0,ObjNull,[ObjNull]];if(isNull _ViQX) exitWith {};if(!(fed_bank getVariable["chargeplaced",false])) exitWith {hint localize "STR_ISTR_Defuse_Nothing"};if((player distance fed_bank) > 2) exitWith {hint "Du musst näher an den Tresor!"};RuqfuBIBK = true;disableSerialization;_QduZ = localize "STR_ISTR_Defuse_Process";5 cutRsc ["QLM","PLAIN"];_waE = uiNamespace getVariable "QLM";_kSen = _waE displayCtrl 38201;_qGd = _waE displayCtrl 38202;_qGd ctrlSetText format["%2 (1%1)...","%",_QduZ];_kSen progressSetPosition 0.01;_pyhc = 0.01;while {true} do { if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then { player playActionNow "stop"; player action ["SwitchWeapon", player, player, 100]; player playMove "AinvPknlMstpSnonWnonDnon_medic_1"; }; if(isNull _waE) then { 5 cutRsc ["QLM","PLAIN"]; _waE = uiNamespace getVariable "QLM"; _kSen = _waE displayCtrl 38201; _qGd = _waE displayCtrl 38202; }; _pyhc = _pyhc + .0035; _kSen progressSetPosition _pyhc; _qGd ctrlSetText format["%3 (%1%2)...",round(_pyhc * 100),"%",_QduZ]; if(_pyhc >= 1 OR !alive player) exitWith {}; if(iqEbELlj) exitWith {}; uisleep 0.55;};RuqfuBIBK = false;5 cutText ["","PLAIN"];player playActionNow "stop";if(!alive player) exitWith {RuqfuBIBK = false;};if(iqEbELlj) exitWith {iqEbELlj = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; RuqfuBIBK = false;};RuqfuBIBK = false;fed_bank setVariable["chargeplaced",false,true];[2,localize "STR_ISTR_Defuse_Success"] remoteExecCall ["zero_fnc_cpbpJzzAd",west];