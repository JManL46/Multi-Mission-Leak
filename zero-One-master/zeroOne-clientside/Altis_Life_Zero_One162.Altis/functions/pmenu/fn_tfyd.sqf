private['_KOm','_qZe','_kTg','_dmJ','_kut','_VVV','_WnT'];disableSerialization;_KOm = param[0,[],[[]]];_qZe = findDisplay 2400;_kTg = _qZe displayctrl 2401;lbClear _kTg;if(_KOm isEqualTo []) exitWith { _kTg lbAdd localize "STR_PM_WantedList_sear"; tFHiSiX = [];};_dmJ = [];{ _dmJ pushBackUnique (_x getVariable["aOsyc",name _x]);} foreach playableUnits;_VVV = [];_WnT = [];{ _kut = _x; if((_kut select 0) in _dmJ) then { _VVV pushBack _kut; _WnT pushBack (_kut select 0); };} foreach _KOm;{ _indexUnits = [_x,_VVV] call zero_fnc_oKzQhZKu; if(_indexUnits != -1) then { _kut = _VVV select _indexUnits; _kTg lbAdd format["%1", _kut select 0]; _kTg lbSetData [(lbSize _kTg)-1,str(_kut)]; };} foreach _WnT;lbsort [_kTg,"ASC"];if(((lbSize _kTg)-1) isEqualTo -1) then { _kTg lbAdd localize "STR_PM_WantedList_sear"; tFHiSiX = [];} else { tFHiSiX = _KOm;};lbSetCurSel[2401,lbCurSel 2401];