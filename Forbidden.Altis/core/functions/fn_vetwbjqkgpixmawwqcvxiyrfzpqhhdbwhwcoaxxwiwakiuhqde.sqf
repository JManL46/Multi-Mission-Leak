 private ["_xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx","_xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx2","_scoreBoard","_pxgfrdtdqjfohljiglapjubxtjqxklwibctctyoqftjksjqsjpdzhzfflkmzguyawx","_pryvdhwenhvzkyrvibahemdguupepqrfoqqstgbfvanufgrffmfvyufathrgxilmmyiy","_lramsqkjljsxksfaobjjivytbizihkhtlijpkronbwqajhpnqhinvzcboxdybstdz","_gxraamybmqioctgsbiiirqzitoadipkqvwncmeyuktmbfgqsdpbeilewketwudagyu","_xhwusitnkphevezgcbwlbghonjycgszofaegvlnbdqbdtqbalsofwbiqzrkjos","_cfwgwzgjjuimubifatkgozwmkzjfnfwdyilqokbmjvghhfhvdqnohinkgqrghjaswzsgpm","_winScore","_yvxhdaromettdzkfzrsoynilnzkxiqejzuordfemdblaynkixgfreuwbztipzlaavx","_euxtucdvenrwyduricsliqkymmslnrqbonwvwizdktgqksyutzmujvjtbfoiak","_vyhxdslwjiohvbomdnsgvzojrggfmepzeonmnhnxodqvovlfjjmsqxhykgkp","_tcucdomfetlrrrpdzwlgforziycfecikgqyhywautiysaurxmfwaujeugfxxoaxlhq"];   if(!safekeeping_active) exitWith {}; if(isNil "event_msgReceived") then {event_msgReceived = false;}; if(event_msgReceived) exitWith {};  _xhwusitnkphevezgcbwlbghonjycgszofaegvlnbdqbdtqbalsofwbiqzrkjos = [_this,0,0,[0]] call BIS_Fnc_param; _euxtucdvenrwyduricsliqkymmslnrqbonwvwizdktgqksyutzmujvjtbfoiak = [_this,1,objNull,[objNull]] call BIS_Fnc_param; _vyhxdslwjiohvbomdnsgvzojrggfmepzeonmnhnxodqvovlfjjmsqxhykgkp = [_this,2,objNull,[objNull]] call BIS_Fnc_param; _tcucdomfetlrrrpdzwlgforziycfecikgqyhywautiysaurxmfwaujeugfxxoaxlhq = [_this,3,objNull,[objNull]] call BIS_Fnc_param;    _scoreBoard = var_base getVariable ["event_scoreBoard",[]]; if(count _scoreBoard == 0) exitWith {};    _lramsqkjljsxksfaobjjivytbizihkhtlijpkronbwqajhpnqhinvzcboxdybstdz = []; _winScore = var_base getVariable ["event_winscore",[0,false]];  _yvxhdaromettdzkfzrsoynilnzkxiqejzuordfemdblaynkixgfreuwbztipzlaavx = []; _yvxhdaromettdzkfzrsoynilnzkxiqejzuordfemdblaynkixgfreuwbztipzlaavx pushBack ((_scoreBoard deleteAt 0) select 0); _yvxhdaromettdzkfzrsoynilnzkxiqejzuordfemdblaynkixgfreuwbztipzlaavx pushBack ((_scoreBoard deleteAt 0) select 0); _yvxhdaromettdzkfzrsoynilnzkxiqejzuordfemdblaynkixgfreuwbztipzlaavx pushBack ((_scoreBoard deleteAt 0) select 0);  _cfwgwzgjjuimubifatkgozwmkzjfnfwdyilqokbmjvghhfhvdqnohinkgqrghjaswzsgpm = if(isNil 'teamColorOverride') then {["#4286f4","#f44242","#42f46b"]} else {teamColorOverride}; _xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx = localize "STR_m_EventScoreBoard"; _xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx = _xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx + format[localize "STR_m_EventNumOfPlayers",_xhwusitnkphevezgcbwlbghonjycgszofaegvlnbdqbdtqbalsofwbiqzrkjos]; if((_winScore select 0) != 0) then {_xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx = _xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx + format[localize "STR_m_PointsNeededToWin",_winScore select 0]}; _xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx = _xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx + "<br/>";   if((_yvxhdaromettdzkfzrsoynilnzkxiqejzuordfemdblaynkixgfreuwbztipzlaavx select 0) > 0) then { 	_xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx = _xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx + format[localize "STR_m_EventBlueScore",_yvxhdaromettdzkfzrsoynilnzkxiqejzuordfemdblaynkixgfreuwbztipzlaavx select 0,_cfwgwzgjjuimubifatkgozwmkzjfnfwdyilqokbmjvghhfhvdqnohinkgqrghjaswzsgpm select 0]; 	if((_winScore select 0) != 0 && (_winScore select 1)) then {_xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx = _xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx + format[" / %1 kills",_winScore select 0];}; };  if((_yvxhdaromettdzkfzrsoynilnzkxiqejzuordfemdblaynkixgfreuwbztipzlaavx select 1) > 0) then { 	_xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx = _xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx + format[localize "STR_m_EventRedScore",_yvxhdaromettdzkfzrsoynilnzkxiqejzuordfemdblaynkixgfreuwbztipzlaavx select 1,_cfwgwzgjjuimubifatkgozwmkzjfnfwdyilqokbmjvghhfhvdqnohinkgqrghjaswzsgpm select 1]; 	if((_winScore select 0) != 0 && (_winScore select 1)) then {_xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx = _xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx + format[" / %1 kills",_winScore select 0];}; };  if((_yvxhdaromettdzkfzrsoynilnzkxiqejzuordfemdblaynkixgfreuwbztipzlaavx select 2) > 0) then { 	_xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx = _xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx + format[localize "STR_m_EventGreenScore",_yvxhdaromettdzkfzrsoynilnzkxiqejzuordfemdblaynkixgfreuwbztipzlaavx select 2,_cfwgwzgjjuimubifatkgozwmkzjfnfwdyilqokbmjvghhfhvdqnohinkgqrghjaswzsgpm select 2]; 	if((_winScore select 0) != 0 && (_winScore select 1)) then {_xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx = _xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx + format[" / %1 kills",_winScore select 0];}; };  if(((_yvxhdaromettdzkfzrsoynilnzkxiqejzuordfemdblaynkixgfreuwbztipzlaavx select 0) > 0) OR ((_yvxhdaromettdzkfzrsoynilnzkxiqejzuordfemdblaynkixgfreuwbztipzlaavx select 1) > 0) OR ((_yvxhdaromettdzkfzrsoynilnzkxiqejzuordfemdblaynkixgfreuwbztipzlaavx select 2) > 0)) then { 	_xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx = _xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx + "<br/><br/>"; };  while {count _scoreBoard > 0} do { 	_pryvdhwenhvzkyrvibahemdguupepqrfoqqstgbfvanufgrffmfvyufathrgxilmmyiy = 0; 	{ 		if((_x select 1) > _pryvdhwenhvzkyrvibahemdguupepqrfoqqstgbfvanufgrffmfvyufathrgxilmmyiy) then {_pryvdhwenhvzkyrvibahemdguupepqrfoqqstgbfvanufgrffmfvyufathrgxilmmyiy = (_x select 1); _gxraamybmqioctgsbiiirqzitoadipkqvwncmeyuktmbfgqsdpbeilewketwudagyu = _forEachIndex;}; 	} foreach _scoreBoard; 	_lramsqkjljsxksfaobjjivytbizihkhtlijpkronbwqajhpnqhinvzcboxdybstdz pushBack (_scoreBoard deleteAt _gxraamybmqioctgsbiiirqzitoadipkqvwncmeyuktmbfgqsdpbeilewketwudagyu); 	 };      { 	_pxgfrdtdqjfohljiglapjubxtjqxklwibctctyoqftjksjqsjpdzhzfflkmzguyawx = if(isNull _euxtucdvenrwyduricsliqkymmslnrqbonwvwizdktgqksyutzmujvjtbfoiak) then {""} else { 		switch (true) do { 			case ((name _euxtucdvenrwyduricsliqkymmslnrqbonwvwizdktgqksyutzmujvjtbfoiak) == (_x select 0)): {"  <t color = '#FFA500'>(1:a)</t>"}; 			case ((name _vyhxdslwjiohvbomdnsgvzojrggfmepzeonmnhnxodqvovlfjjmsqxhykgkp) == (_x select 0)): {"  <t color = '#FFA500'>(2:a)</t>"}; 			case ((name _tcucdomfetlrrrpdzwlgforziycfecikgqyhywautiysaurxmfwaujeugfxxoaxlhq) == (_x select 0)): {"  <t color = '#FFA500'>(3:a)</t>"}; 			default {""}; 		}; 	}; 	_xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx = _xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx + format["<t color = '%3'>%1</t>: %2%4<br />",(_x select 0),(_x select 1),_cfwgwzgjjuimubifatkgozwmkzjfnfwdyilqokbmjvghhfhvdqnohinkgqrghjaswzsgpm select ((_x select 2) - 1),_pxgfrdtdqjfohljiglapjubxtjqxklwibctctyoqftjksjqsjpdzhzfflkmzguyawx]; } foreach _lramsqkjljsxksfaobjjivytbizihkhtlijpkronbwqajhpnqhinvzcboxdybstdz;    hint parseText _xdnauetoqchkradhxgwecfembeyfrlouambtgjwaixkoybhkattdkqaxpnkoblnqwx; 