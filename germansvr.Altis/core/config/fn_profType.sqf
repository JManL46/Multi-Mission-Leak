/*File: fn_profTypeAuthor: Jacob "PapaBear" Tyler Description:Text changing*/

//convert name to prof name
_type = [_this,0,"",[""]] call BIS_fnc_param;

//text to license
case "heroin": {_profName = "Heroin_Prof";
case "pebble": { _profName = "Pebble_Prof";
};
//license to text
case "Heroin_Prof": {_profName = "Heroin";
case "Pebble_Prof": { _profName = "Pebble";
};