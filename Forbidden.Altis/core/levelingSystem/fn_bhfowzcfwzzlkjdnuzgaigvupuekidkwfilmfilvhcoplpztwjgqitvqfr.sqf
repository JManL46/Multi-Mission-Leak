private ["_zoamhuqagigwrgwfacfobgdryanulkfbjdsxgzyndpjworargqpnbndbgpvxtwpryd","_owrvwnnskyxmnrxdrcaghaqzxymbqiulgqqthtdmlsdxknotnbklayxsqdzv"]; _zoamhuqagigwrgwfacfobgdryanulkfbjdsxgzyndpjworargqpnbndbgpvxtwpryd = 0;  if((call life_rebactive) == 0) exitWith {};  _owrvwnnskyxmnrxdrcaghaqzxymbqiulgqqthtdmlsdxknotnbklayxsqdzv = createMarkerLocal ["reb_guardArea1",[10786.3,10547.6,0.00113869]]; _owrvwnnskyxmnrxdrcaghaqzxymbqiulgqqthtdmlsdxknotnbklayxsqdzv setMarkerShapeLocal "ELLIPSE"; _owrvwnnskyxmnrxdrcaghaqzxymbqiulgqqthtdmlsdxknotnbklayxsqdzv setMarkerColorLocal "ColorBlack"; _owrvwnnskyxmnrxdrcaghaqzxymbqiulgqqthtdmlsdxknotnbklayxsqdzv setMarkerBrushLocal "Border"; _owrvwnnskyxmnrxdrcaghaqzxymbqiulgqqthtdmlsdxknotnbklayxsqdzv setMarkerSizeLocal [7, 7];  _owrvwnnskyxmnrxdrcaghaqzxymbqiulgqqthtdmlsdxknotnbklayxsqdzv = createMarkerLocal ["reb_guardArea2",[10806.7,10548.5,0.00138092]]; _owrvwnnskyxmnrxdrcaghaqzxymbqiulgqqthtdmlsdxknotnbklayxsqdzv setMarkerShapeLocal "ELLIPSE"; _owrvwnnskyxmnrxdrcaghaqzxymbqiulgqqthtdmlsdxknotnbklayxsqdzv setMarkerColorLocal "ColorBlack"; _owrvwnnskyxmnrxdrcaghaqzxymbqiulgqqthtdmlsdxknotnbklayxsqdzv setMarkerBrushLocal "Border"; _owrvwnnskyxmnrxdrcaghaqzxymbqiulgqqthtdmlsdxknotnbklayxsqdzv setMarkerSizeLocal [7, 7];  _owrvwnnskyxmnrxdrcaghaqzxymbqiulgqqthtdmlsdxknotnbklayxsqdzv = createMarkerLocal ["reb_guardArea3",[10796.5,10547.7,0.0014267]]; _owrvwnnskyxmnrxdrcaghaqzxymbqiulgqqthtdmlsdxknotnbklayxsqdzv setMarkerShapeLocal "ELLIPSE"; _owrvwnnskyxmnrxdrcaghaqzxymbqiulgqqthtdmlsdxknotnbklayxsqdzv setMarkerColorLocal "ColorBlack"; _owrvwnnskyxmnrxdrcaghaqzxymbqiulgqqthtdmlsdxknotnbklayxsqdzv setMarkerBrushLocal "Border"; _owrvwnnskyxmnrxdrcaghaqzxymbqiulgqqthtdmlsdxknotnbklayxsqdzv setMarkerSizeLocal [7, 7];  _owrvwnnskyxmnrxdrcaghaqzxymbqiulgqqthtdmlsdxknotnbklayxsqdzv = createMarkerLocal ["reb_guardArea4",[12919.9,9877.18,0.00141764]]; _owrvwnnskyxmnrxdrcaghaqzxymbqiulgqqthtdmlsdxknotnbklayxsqdzv setMarkerShapeLocal "ELLIPSE"; _owrvwnnskyxmnrxdrcaghaqzxymbqiulgqqthtdmlsdxknotnbklayxsqdzv setMarkerColorLocal "ColorBlack"; _owrvwnnskyxmnrxdrcaghaqzxymbqiulgqqthtdmlsdxknotnbklayxsqdzv setMarkerBrushLocal "Border"; _owrvwnnskyxmnrxdrcaghaqzxymbqiulgqqthtdmlsdxknotnbklayxsqdzv setMarkerSizeLocal [20, 20];  while {true} do { 	if((((getpos player) inArea "reb_guardArea1") OR ((getpos player) inArea "reb_guardArea2") OR ((getpos player) inArea "reb_guardArea3") OR (((getpos player) inArea "reb_guardArea4") && (getPosASL player select 2) > 7)) && !(safekeeping_active OR safekeeping_inprogress)) then { 		_zoamhuqagigwrgwfacfobgdryanulkfbjdsxgzyndpjworargqpnbndbgpvxtwpryd = _zoamhuqagigwrgwfacfobgdryanulkfbjdsxgzyndpjworargqpnbndbgpvxtwpryd + 1; 		if(_zoamhuqagigwrgwfacfobgdryanulkfbjdsxgzyndpjworargqpnbndbgpvxtwpryd % 60 == 0 && (diag_tickTime - keyPressTime) < 90) then { 			[80,4] spawn life_fnc_earnXP; 		}; 	} else { 		_zoamhuqagigwrgwfacfobgdryanulkfbjdsxgzyndpjworargqpnbndbgpvxtwpryd = 0; 	}; 	 	sleep 1; }; 