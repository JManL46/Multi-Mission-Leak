
#include <macro.h>
 private["_zejfissxcfirdjukamxrcqejjmprsiexwqchjrhuddcjqchfrlnwopbkngnemghgtq","_acqulhulfecsgiemyuaifeiijdnpcpwycjpvoafsmynxhwyptrfbjlegqfsgna","_vdfgkxiwyqdpbuqcbfqhaeuitvtrlkkmqgqndcjfdsjmflpnikklkkaihyalnxkmu"]; disableSerialization;  if((lbCurSel 3502) == -1) exitWith {hint localize "STR_Civ_SelectItem";}; _zejfissxcfirdjukamxrcqejjmprsiexwqchjrhuddcjqchfrlnwopbkngnemghgtq = CONTROL_DATA(3502); _acqulhulfecsgiemyuaifeiijdnpcpwycjpvoafsmynxhwyptrfbjlegqfsgna = ctrlText 3505; _vdfgkxiwyqdpbuqcbfqhaeuitvtrlkkmqgqndcjfdsjmflpnikklkkaihyalnxkmu = life_safeObj GVAR ["safe",0];   if(!([_acqulhulfecsgiemyuaifeiijdnpcpwycjpvoafsmynxhwyptrfbjlegqfsgna] call TON_fnc_isnumber)) exitWith {hint localize "STR_MISC_WrongNumFormat";}; _acqulhulfecsgiemyuaifeiijdnpcpwycjpvoafsmynxhwyptrfbjlegqfsgna = parseNumber(_acqulhulfecsgiemyuaifeiijdnpcpwycjpvoafsmynxhwyptrfbjlegqfsgna); if(_acqulhulfecsgiemyuaifeiijdnpcpwycjpvoafsmynxhwyptrfbjlegqfsgna < 1) exitWith {hint localize "STR_Cop_VaultUnder1";}; if(!(EQUAL(_zejfissxcfirdjukamxrcqejjmprsiexwqchjrhuddcjqchfrlnwopbkngnemghgtq,"goldBar"))) exitWith {hint localize "STR_Cop_OnlyGold"}; if(_acqulhulfecsgiemyuaifeiijdnpcpwycjpvoafsmynxhwyptrfbjlegqfsgna > _vdfgkxiwyqdpbuqcbfqhaeuitvtrlkkmqgqndcjfdsjmflpnikklkkaihyalnxkmu) exitWith {hint format[localize "STR_Civ_IsntEnoughGold",_acqulhulfecsgiemyuaifeiijdnpcpwycjpvoafsmynxhwyptrfbjlegqfsgna];};   _acqulhulfecsgiemyuaifeiijdnpcpwycjpvoafsmynxhwyptrfbjlegqfsgna = [_zejfissxcfirdjukamxrcqejjmprsiexwqchjrhuddcjqchfrlnwopbkngnemghgtq,_acqulhulfecsgiemyuaifeiijdnpcpwycjpvoafsmynxhwyptrfbjlegqfsgna,life_carryWeight,life_maxWeight] call life_fnc_wvdznvaqxsfdfvikfnyhkpoigxucyfqjhqtuchxgawxyvlxhru; if(EQUAL(_acqulhulfecsgiemyuaifeiijdnpcpwycjpvoafsmynxhwyptrfbjlegqfsgna,0)) exitWith {hint localize "STR_NOTF_InvFull"};    if(!([true,_zejfissxcfirdjukamxrcqejjmprsiexwqchjrhuddcjqchfrlnwopbkngnemghgtq,_acqulhulfecsgiemyuaifeiijdnpcpwycjpvoafsmynxhwyptrfbjlegqfsgna] call life_fnc_obfjrnynfhghcglhujcjbgakxemxpjvrqczgxoeickhzvgovmtdbvr)) exitWith {hint localize "STR_NOTF_CouldntAdd";}; life_safeObj SVAR ["safe",_vdfgkxiwyqdpbuqcbfqhaeuitvtrlkkmqgqndcjfdsjmflpnikklkkaihyalnxkmu - _acqulhulfecsgiemyuaifeiijdnpcpwycjpvoafsmynxhwyptrfbjlegqfsgna,TRUE]; [life_safeObj] call life_fnc_pabpwbxvdxikqbjssxiqbpryjtwivsdkusktkaqyewtdhthgxlnlrinc; 