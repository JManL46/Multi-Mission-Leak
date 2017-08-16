/*
	File: fn_varHandle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handler for getting a variables name, short name, etc.
*/
private["_var","_mode"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_var == "" OR _mode == -1) exitWith {""};

switch (_mode) do
{
	case 0:
	{
		switch (_var) do
		{
			case "oilb": {"life_inv_oilb"};
			case "oilp": {"life_inv_oilp"};
			case "heroinu": {"life_inv_heroinu"};
			case "heroinp": {"life_inv_heroinp"};
			case "cannabis": {"life_inv_cannabis"};
			case "marijuana": {"life_inv_marijuana"};
			case "marijuanam": {"life_inv_marijuanam"};
			case "apple": {"life_inv_apple"};
			case "water": {"life_inv_water"};
			case "saltwater": {"life_inv_saltwater"};
			case "moonshine": {"life_inv_moonshine"};
			case "whiskeyc_0": {"life_inv_whiskeyc_0"};
			case "whiskeyc_1": {"life_inv_whiskeyc_1"};
			case "whiskeyc_2": {"life_inv_whiskeyc_2"};
			case "whiskeyc_3": {"life_inv_whiskeyc_3"};
			case "whiskeyr_0": {"life_inv_whiskeyr_0"};
			case "whiskeyr_1": {"life_inv_whiskeyr_1"};
			case "whiskeyr_2": {"life_inv_whiskeyr_2"};
			case "whiskeyr_3": {"life_inv_whiskeyr_3"};
			case "scotch_0": {"life_inv_scotch_0"};
			case "scotch_1": {"life_inv_scotch_1"};
			case "scotch_2": {"life_inv_scotch_2"};
			case "scotch_3": {"life_inv_scotch_3"};
			case "corn": {"life_inv_corn"};
			case "rye": {"life_inv_rye"};
			case "barley": {"life_inv_barley"};
			case "yeast": {"life_inv_yeast"};
			case "berry": {"life_inv_berry"};
			case "salema": {"life_inv_salema"};
			case "ornate": {"life_inv_ornate"};
			case "mackerel": {"life_inv_mackerel"};
			case "tuna": {"life_inv_tuna"};
			case "mullet": {"life_inv_mullet"};
			case "catshark": {"life_inv_catshark"};
			case "turtle": {"life_inv_turtle"};
			case "fishing": {"life_inv_fishingpoles"};
			case "coffee": {"life_inv_coffee"};
			case "turtlesoup": {"life_inv_turtlesoup"};
			case "donuts": {"life_inv_donuts"};
			case "fuelE": {"life_inv_fuelE"};
			case "fuelF": {"life_inv_fuelF"};
			case "money": {"life_money"};
			case "pickaxe": {"life_inv_pickaxe"};
			case "copperore": {"life_inv_copperore"};
			case "ironore": {"life_inv_ironore"};
			case "iron_r": {"life_inv_ironr"};
			case "copper_r": {"life_inv_copperr"};
			case "salt": {"life_inv_salt"};
			case "salt_r": {"life_inv_saltr"};
			case "sand": {"life_inv_sand"};
			case "glass": {"life_inv_glass"};
			case "tbacon": {"life_inv_tbacon"};
			case "lockpick": {"life_inv_lockpick"};
			case "redgull": {"life_inv_redgull"};
			case "peach": {"life_inv_peach"};
			case "diamond": {"life_inv_diamond"};
			case "diamondc": {"life_inv_diamondr"};
			case "cocaine": {"life_inv_coke"};
			case "cocainep": {"life_inv_cokep"};
			case "spikeStrip": {"life_inv_spikeStrip"};
			case "cement": {"life_inv_cement"};
			case "rock": {"life_inv_rock"};
			case "ephedrau": {"life_inv_ephedrau"};
			case "ephedra": {"life_inv_ephedra"};
			case "meth": {"life_inv_meth"};
			case "phos": {"life_inv_phos"};
			case "hydro": {"life_inv_hydro"};
			case "pcp": {"life_inv_pcp"};
			case "ziptie": {"life_inv_ziptie"};
			case "storage1": {"life_inv_storage1"};
			case "storage2": {"life_inv_storage2"};
			case "agingbarrel": {"life_inv_agingbarrel"};
			case "doubloon": {"life_inv_doubloon"};
			case "silverpiece": {"life_inv_silverpiece"};
			case "ruby": {"life_inv_ruby"};
			case "nitro": {"life_inv_nitro"};
			case "diamondf": {"life_inv_diamondf"};
			case "pearl": {"life_inv_pearl"};
			case "adrenalineShot": {"life_inv_adrenalineShot"};
			case "redburger": {"life_inv_redBurger"};
			case "tracker": {"life_inv_tracker"};
			case "caralarm": {"life_inv_caralarm"};
			case "airalarm": {"life_inv_airalarm"};
			case "soda": {"life_inv_soda"};
			case "rubber": {"life_inv_rubber"};
			case "beer": {"life_inv_beer"};
			case "protest": {"life_inv_protest"};
			case "shank": {"life_inv_shank"};
			case "ducttape": {"life_inv_ducttape"};
			case "woodaxe": {"life_inv_woodaxe"};
			case "timber": {"life_inv_timber"};
			case "towRope": {"life_inv_towRope"};
			case "campfire": {"life_inv_campfire"};
			case "dog": {"life_inv_dog"};
			case "goat": {"life_inv_goat"};
			case "sheep": {"life_inv_sheep"};
			case "chicken": {"life_inv_chicken"};
			case "rabbit": {"life_inv_rabbit"};
			case "snake": {"life_inv_snake"};
			case "dogp": {"life_inv_dogp"};
			case "goatp": {"life_inv_goatp"};
			case "sheepp": {"life_inv_sheepp"};
			case "chickenp": {"life_inv_chickenp"};
			case "rabbitp": {"life_inv_rabbitp"};
			case "snakep": {"life_inv_snakep"};
			case "skinningknife": {"life_inv_skinningknife"};
			case "debitcard": {"life_inv_debitcard"};
			case "blindfold": {"life_inv_blindfold"};
			case "drill": {"life_inv_drill"};
			case "goldbar": {"life_inv_goldbar"};
			case "dirty_money": {"life_inv_dirty_money"};
			case "demoCharge": {"life_inv_demoCharge"};
			case "boltCutter": {"life_inv_boltCutter"};
			case "tent1": {"life_inv_tent1"};
			case "tent2": {"life_inv_tent2"};
			case "speedbomb": {"life_inv_speedbomb"};
			case "bagwallshort": {"life_inv_bagwallshort"};
			case "bagwalllong": {"life_inv_bagwalllong"};
			case "bagwallround": {"life_inv_bagwallround"};
			case "razorwire": {"life_inv_razorwire"};
			case "roadCone": {"life_inv_roadCone"};
			case "roadBarrier": {"life_inv_roadBarrier"};
			case "cncBarrier": {"life_inv_cncBarrier"};
			case "cncBarrierL": {"life_inv_cncBarrierL"};
			case "ladder": {"life_inv_ladder"};
			case "barGate": {"life_inv_barGate"};
			case "defib": {"life_inv_defib"};
			case "bloodbag": {"life_inv_bloodbag"};
			case "vammo": {"life_inv_vammo"};
			case "splint": {"life_inv_splint"};
			case "painkillers": {"life_inv_painkillers"};
			case "excavator": {"life_inv_excavator"};
			case "carbomb": {"life_inv_carbomb"};
			case "plateMetal": {"life_inv_plateMetal"};
			case "plate": {"life_inv_plate"};
			case "toasty": {"life_inv_toasty"};
			case "sandwich": {"life_inv_sandwich"};
		};
	};
	
	case 1:
	{
		switch (_var) do
		{
			case "life_inv_oilb": {"oilb"};
			case "life_inv_oilp": {"oilp"};
			case "life_inv_heroinu": {"heroinu"};
			case "life_inv_heroinp": {"heroinp"};
			case "life_inv_cannabis": {"cannabis"};
			case "life_inv_marijuana": {"marijuana"};
			case "life_inv_marijuanam": {"marijuanam"};
			case "life_inv_apple": {"apple"};
			case "life_inv_berry": {"berry"};
			case "life_inv_moonshine": {"moonshine"};
			case "life_inv_whiskeyc_0": {"whiskeyc_0"};
			case "life_inv_whiskeyc_1": {"whiskeyc_1"};
			case "life_inv_whiskeyc_2": {"whiskeyc_2"};
			case "life_inv_whiskeyc_3": {"whiskeyc_3"};
			case "life_inv_whiskeyr_0": {"whiskeyr_0"};
			case "life_inv_whiskeyr_1": {"whiskeyr_1"};
			case "life_inv_whiskeyr_2": {"whiskeyr_2"};
			case "life_inv_whiskeyr_3": {"whiskeyr_3"};
			case "life_inv_scotch_0": {"scotch_0"};
			case "life_inv_scotch_1": {"scotch_1"};
			case "life_inv_scotch_2": {"scotch_2"};
			case "life_inv_scotch_3": {"scotch_3"};
			case "life_inv_water": {"water"};
			case "life_inv_saltwater": {"saltwater"};
			case "life_inv_corn": {"corn"};
			case "life_inv_rye": {"rye"};
			case "life_inv_barley": {"barley"};
			case "life_inv_yeast": {"yeast"};
			case "life_inv_salema": {"salema"};
			case "life_inv_ornate": {"ornate"};
			case "life_inv_mackerel": {"mackerel"};
			case "life_inv_tuna": {"tuna"};
			case "life_inv_mullet": {"mullet"};
			case "life_inv_catshark": {"catshark"};
			case "life_inv_turtle": {"turtle"};
			case "life_inv_fishingpoles": {"fishing"};
			case "life_inv_coffee": {"coffee"};
			case "life_inv_turtlesoup": {"turtlesoup"};
			case "life_inv_donuts": {"donuts"};
			case "life_inv_fuelE": {"fuelE"};
			case "life_inv_fuelF": {"fuelF"};
			case "life_money": {"money"};
			case "life_inv_pickaxe": {"pickaxe"};
			case "life_inv_copperore": {"copperore"};
			case "life_inv_ironore": {"ironore"};
			case "life_inv_ironr": {"iron_r"};
			case "life_inv_carbomb": {"carbomb"};
			case "life_inv_copperr": {"copper_r"};
			case "life_inv_sand": {"sand"};
			case "life_inv_salt": {"salt"};
			case "life_inv_glass": {"glass"};
			case "life_inv_redgull": {"redgull"};
			case "life_inv_blindfold": {"blindfold"};
			case "life_inv_lockpick": {"lockpick"};
			case "life_inv_tbacon": {"tbacon"};
			case "life_inv_peach": {"peach"};
			case "life_inv_diamond": {"diamond"};
			case "life_inv_diamondr": {"diamondc"};
			case "life_inv_saltr": {"salt_r"};
			case "life_inv_coke": {"cocaine"};
			case "life_inv_cokep": {"cocainep"};
			case "life_inv_spikeStrip": {"spikeStrip"};
			case "life_inv_cement": {"cement"};
			case "life_inv_rock": {"rock"};
			case "life_inv_ephedrau": {"ephedrau"};
			case "life_inv_ephedra": {"ephedra"};
			case "life_inv_meth": {"meth"};
			case "life_inv_phos": {"phos"};
			case "life_inv_hydro": {"hydro"};
			case "life_inv_pcp": {"pcp"};
			case "life_inv_ziptie": {"ziptie"};
			case "life_inv_storage1": {"storage1"};
			case "life_inv_storage2": {"storage2"};
			case "life_inv_agingbarrel": {"agingbarrel"};
			case "life_inv_doubloon": {"doubloon"};
			case "life_inv_silverpiece": {"silverpiece"};
			case "life_inv_ruby": {"ruby"};
			case "life_inv_nitro": {"nitro"};
			case "life_inv_diamondf": {"diamondf"};
			case "life_inv_pearl": {"pearl"};
			case "life_inv_adrenalineShot": {"adrenalineShot"};
			case "life_inv_redBurger": {"redburger"};
			case "life_inv_tracker": {"tracker"};
			case "life_inv_caralarm": {"caralarm"};
			case "life_inv_airalarm": {"airalarm"};
			case "life_inv_roadCone": {"roadCone"};
			case "life_inv_roadBarrier": {"roadBarrier"};
			case "life_inv_cncBarrier": {"cncBarrier"};
			case "life_inv_cncBarrierL": {"cncBarrierL"};
			case "life_inv_ladder": {"ladder"};
			case "life_inv_barGate": {"barGate"};
			case "life_inv_tent1": {"tent1"};
			case "life_inv_tent2": {"tent2"};
			case "life_inv_campfire": {"campfire"};
			case "life_inv_dog": {"dog"};
			case "life_inv_goat": {"goat"};
			case "life_inv_sheep": {"sheep"};
			case "life_inv_chicken": {"chicken"};
			case "life_inv_rabbit": {"rabbit"};
			case "life_inv_snake": {"snake"};
			case "life_inv_dogp": {"dogp"};
			case "life_inv_goatp": {"goatp"};
			case "life_inv_sheepp": {"sheepp"};
			case "life_inv_chickenp": {"chickenp"};
			case "life_inv_snakep": {"snakep"};
			case "life_inv_rabbitp": {"rabbitp"};
			case "life_inv_boltCutter": {"boltCutter"};
			case "life_inv_demoCharge": {"demoCharge"};
			case "life_inv_speedbomb": {"speedbomb"};
			case "life_inv_goldbar": {"goldbar"};
			case "life_inv_dirty_money": {"dirty_money"};
			case "life_inv_drill": {"drill"};
			case "life_inv_debitcard": {"debitcard"};
			case "life_inv_skinningknife": {"skinningknife"};
			case "life_inv_towRope": {"towRope"};
			case "life_inv_protest": {"protest"};
			case "life_inv_beer": {"beer"};
			case "life_inv_rubber": {"rubber"};
			case "life_inv_soda": {"soda"};
			case "life_inv_ducttape": {"ducttape"};
			case "life_inv_timber": {"timber"};
			case "life_inv_woodaxe": {"woodaxe"};
			case "life_inv_shank": {"shank"};
			case "life_inv_splint": {"splint"};
			case "life_inv_painkillers": {"painkillers"};
			case "life_inv_bloodbag": {"bloodbag"};
			case "life_inv_defib": {"defib"};
			case "life_inv_vammo": {"vammo"};
			case "life_inv_excavator": {"excavator"};
			case "life_inv_plateMetal": {"plateMetal"};
			case "life_inv_plate": {"plate"};	
			case "life_inv_toasty": {"toasty"};
			case "life_inv_sandwich": {"sandwich"};
			case "life_inv_bagwallshort": {"bagwallshort"};
			case "life_inv_bagwalllong": {"bagwalllong"};
			case "life_inv_bagwallround": {"bagwallround"};
			case "life_inv_razorwire": {"razorwire"};
		};
	};
};