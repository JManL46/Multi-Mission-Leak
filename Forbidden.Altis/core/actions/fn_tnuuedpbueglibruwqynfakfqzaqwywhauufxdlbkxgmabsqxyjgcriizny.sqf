
#include<macro.h>
  private["_mgigumfyxwlqemrlyeucmxopctcumdffmugkdxapevdgpnytwdiwaqmkaajfmw","_xmrsfchsbvineppwaivvlcayufkpdtmuzpqqkkmitbfaknutgjqndrhmeqhvlqv"]; _mgigumfyxwlqemrlyeucmxopctcumdffmugkdxapevdgpnytwdiwaqmkaajfmw = cursorTarget; if(isNull _mgigumfyxwlqemrlyeucmxopctcumdffmugkdxapevdgpnytwdiwaqmkaajfmw) exitWith {};  if(_mgigumfyxwlqemrlyeucmxopctcumdffmugkdxapevdgpnytwdiwaqmkaajfmw getVariable "tied") exitWith {}; _xmrsfchsbvineppwaivvlcayufkpdtmuzpqqkkmitbfaknutgjqndrhmeqhvlqv = false;  if(player == _mgigumfyxwlqemrlyeucmxopctcumdffmugkdxapevdgpnytwdiwaqmkaajfmw) exitWith {}; if(!isPlayer _mgigumfyxwlqemrlyeucmxopctcumdffmugkdxapevdgpnytwdiwaqmkaajfmw) exitWith {};  if(FETCH_CONST(life_rebactive) == 0) then { 	if(ITEM_VALUE("zipties") == 0) exitWith {_xmrsfchsbvineppwaivvlcayufkpdtmuzpqqkkmitbfaknutgjqndrhmeqhvlqv = true;}; 	[false,"zipties",1] call life_fnc_obfjrnynfhghcglhujcjbgakxemxpjvrqczgxoeickhzvgovmtdbvr; }; if(_xmrsfchsbvineppwaivvlcayufkpdtmuzpqqkkmitbfaknutgjqndrhmeqhvlqv) exitWith {hint "Du har inga buntband!";};  _mgigumfyxwlqemrlyeucmxopctcumdffmugkdxapevdgpnytwdiwaqmkaajfmw setVariable["tied",true,true]; [[_mgigumfyxwlqemrlyeucmxopctcumdffmugkdxapevdgpnytwdiwaqmkaajfmw,"ziptie",40],"life_fnc_trhseodhngmgvxncyytnwswxjnpawhscwsjplsavkvanngibxeptqc",true,false] call life_fnc_MP; [[player], "life_fnc_tieing", _mgigumfyxwlqemrlyeucmxopctcumdffmugkdxapevdgpnytwdiwaqmkaajfmw, false] spawn life_fnc_MP;         