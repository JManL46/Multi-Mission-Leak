 private["_house"]; _house = [_this,0,"",[""]] call BIS_fnc_param; if(_house == "") exitWith {[]};   switch (true) do { 	case (_house in ["Land_i_Shed_Ind_F"]): {[9000000,2]};  	case (_house in ["Land_i_House_Big_02_V1_F","Land_i_House_Big_02_V2_F","Land_i_House_Big_02_V3_F"]): {[4000000,3]};  	case (_house in ["Land_i_House_Big_01_V1_F","Land_i_House_Big_01_V2_F","Land_i_House_Big_01_V3_F"]): {[5750000,4]};  	case (_house in ["Land_i_Garage_V1_F","Land_i_Garage_V2_F"]): {[1100000,0]};  	case (_house in ["Land_i_House_Small_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_01_V3_F"]): {[3000000,2]};  	case (_house in ["Land_i_House_Small_02_V1_F","Land_i_House_Small_02_V2_F","Land_i_House_Small_02_V3_F"]): {[2500000,2]};  	case (_house in ["Land_i_House_Small_03_V1_F"]): {[4000000,3]};  	case (_house in ["Land_i_Stone_HouseSmall_V2_F","Land_i_Stone_HouseSmall_V1_F","Land_i_Stone_HouseSmall_V3_F"]): {[1500000,1]};  }; 