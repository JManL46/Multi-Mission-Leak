  if(var_base getVariable ["newMissionFile",false]) then { 	hint "Du har AVAKTIVERAT varningen, den kommer INTE visas 3 min innan restart."; 	var_base setVariable ["newMissionFile",false,true]; 	[[4,(getPlayerUID player),"","NewMission varning","Avaktiverad",profileName,"",str (getPos player)],"TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",false,false] spawn life_fnc_MP; } else { 	hint "Du har Aktiverat varningen, adminmeddelande skickas ut 3 min innan restart till alla spelare."; 	var_base setVariable ["newMissionFile",true,true]; 	[[4,(getPlayerUID player),"","NewMission varning","Aktiverad",profileName,"",str (getPos player)],"TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",false,false] spawn life_fnc_MP; };  