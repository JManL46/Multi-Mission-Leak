private ["_ogxonqrlijjhzsoasehoqygleptaqdzshtzottwppbqvdcxudmsfnyabitepoawwqosc","_waeskyynfrqwzreozhnxlpmnwxqcsufalrwfjenrcbrnuvoittpqyoyijrttwbwmtevbs","_bvjeqzmgsfttqdgagftaykclvyzpqzbgmcbkaudifqsocjfapzlqydqwazyuzimz","_iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwp","_iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwpInfo","_iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwpName","_fpyqbmlaqjvngcjolbocgnyhmlrcsvofdremofopzxhytujsyzwezkmqxggmnqok"]; if(isNil "boughtItemsArr") then {boughtItemsArr = [];};   _waeskyynfrqwzreozhnxlpmnwxqcsufalrwfjenrcbrnuvoittpqyoyijrttwbwmtevbs = [_this,0,objNull,[objNull]] call BIS_fnc_param; _iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwp = [_this,1,"",[""]] call BIS_fnc_param;  _ogxonqrlijjhzsoasehoqygleptaqdzshtzottwppbqvdcxudmsfnyabitepoawwqosc = (toArray (str _waeskyynfrqwzreozhnxlpmnwxqcsufalrwfjenrcbrnuvoittpqyoyijrttwbwmtevbs)); _ogxonqrlijjhzsoasehoqygleptaqdzshtzottwppbqvdcxudmsfnyabitepoawwqosc resize 11; _ogxonqrlijjhzsoasehoqygleptaqdzshtzottwppbqvdcxudmsfnyabitepoawwqosc = toString _ogxonqrlijjhzsoasehoqygleptaqdzshtzottwppbqvdcxudmsfnyabitepoawwqosc; if(_ogxonqrlijjhzsoasehoqygleptaqdzshtzottwppbqvdcxudmsfnyabitepoawwqosc != "salvageBox_") exitWith {};  clearItemCargoGlobal _waeskyynfrqwzreozhnxlpmnwxqcsufalrwfjenrcbrnuvoittpqyoyijrttwbwmtevbs; clearWeaponCargoGlobal _waeskyynfrqwzreozhnxlpmnwxqcsufalrwfjenrcbrnuvoittpqyoyijrttwbwmtevbs; clearBackpackCargoGlobal _waeskyynfrqwzreozhnxlpmnwxqcsufalrwfjenrcbrnuvoittpqyoyijrttwbwmtevbs; clearMagazineCargoGlobal _waeskyynfrqwzreozhnxlpmnwxqcsufalrwfjenrcbrnuvoittpqyoyijrttwbwmtevbs;  _iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwpInfo = [_iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwp] call life_fnc_ssxeemmhetnvsvebxscdwzoubpideoksemqkwcbexdhiozmqizhvq; _iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwpName = if(count _iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwpInfo > 1) then {_iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwpInfo select 1} else {_iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwp};  _bvjeqzmgsfttqdgagftaykclvyzpqzbgmcbkaudifqsocjfapzlqydqwazyuzimz = switch (true) do { 	 	case (_iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwp in ["hgun_P07_F","hgun_Rook40_F","hgun_PDW2000_F","SMG_02_F","SMG_05_F"]): {1}; 	 	case (_iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwp in ["hgun_Pistol_heavy_01_MRD_F","hgun_Pistol_heavy_01_snds_F","hgun_Pistol_heavy_01_F","hgun_ACPC2_F","hgun_ACPC2_snds_F","hgun_Pistol_heavy_02_Yorris_F","hgun_Pistol_heavy_02_F","SMG_01_F"]): {2}; 	 	case (_iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwp in ["arifle_AKS_F"]): {3}; 	 	case (_iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwp in ["arifle_Mk20_F","arifle_Mk20_plain_F","arifle_Mk20C_F","arifle_Mk20C_plain_F","arifle_TRG21_F","arifle_TRG20_F","arifle_SPAR_01_blk_F","arifle_SPAR_01_khk_F","arifle_SPAR_01_snd_F","arifle_SDAR_F"]): {4}; 	 	case (_iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwp in ["arifle_CTAR_blk_F","arifle_CTAR_hex_F","arifle_CTAR_ghex_F"]): {5}; 	 	case (_iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwp in ["LMG_Mk200_F","arifle_Katiba_F","arifle_Katiba_C_F","arifle_MXC_F","arifle_MXC_Black_F","arifle_MXC_khk_F","arifle_MX_F","arifle_MX_Black_F","arifle_MX_khk_F","arifle_MXM_F","arifle_MXM_Black_F","arifle_MXM_khk_F","srifle_DMR_07_hex_F","srifle_DMR_07_blk_F"]): {6}; 	 	case (_iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwp in ["srifle_DMR_01_F", "srifle_EBR_F","srifle_DMR_03_F","srifle_DMR_06_camo_F","srifle_DMR_06_olive_F","arifle_AK12_F","arifle_AKM_F","arifle_SPAR_03_blk_F","arifle_SPAR_03_khk_F","arifle_SPAR_03_snd_F"]): {7}; 	default {0}; };  if(_bvjeqzmgsfttqdgagftaykclvyzpqzbgmcbkaudifqsocjfapzlqydqwazyuzimz == 0) exitWith {hint format[localize "STR_m_SalvageNoMoney",_iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwpName];};  _fpyqbmlaqjvngcjolbocgnyhmlrcsvofdremofopzxhytujsyzwezkmqxggmnqok = switch (_bvjeqzmgsfttqdgagftaykclvyzpqzbgmcbkaudifqsocjfapzlqydqwazyuzimz) do { 	 	case 1: {10000}; 	 	case 2: {10000}; 	 	case 3: {50000}; 	 	case 4: {50000}; 	 	case 5: {50000}; 	 	case 6: {100000}; 	 	case 7: {300000}; };  if(_iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwpName in boughtItemsArr) then { 	[3,(getPlayerUID player),"","Salvage after buy",format["Salvaged %1, recently bought %2 of them",_iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwpName,{_x == _iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwpName} count boughtItemsArr],profileName,"",str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; };  life_atmbank = life_atmbank + _fpyqbmlaqjvngcjolbocgnyhmlrcsvofdremofopzxhytujsyzwezkmqxggmnqok; hint format[localize "STR_m_SalvagedItem",_iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwpName,_fpyqbmlaqjvngcjolbocgnyhmlrcsvofdremofopzxhytujsyzwezkmqxggmnqok]; [1,(getPlayerUID player),"","Salvaged item",format["%1: $%2",_iwddrenfacgvavmrjdtmdawhexynahtknoxsfvyzujcluqsqikefilbzvvqazkthpwpName,_fpyqbmlaqjvngcjolbocgnyhmlrcsvofdremofopzxhytujsyzwezkmqxggmnqok],profileName,"",str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; 