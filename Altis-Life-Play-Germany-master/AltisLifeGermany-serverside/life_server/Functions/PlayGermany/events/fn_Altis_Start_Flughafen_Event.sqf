private ["_obj","_dat","_cString","_adString"]; 
 
if(!isNil "PG_event_Airport" && !(PG_event_Airport isEqualTo [])) then {{deleteVehicle _x;}foreach PG_event_Airport;}; //don't build it twice 
PG_event_Airport = []; 
 
_obj = objNull;_dat = [];_adString = "CAN_COLLIDE"; 
_cString = {_obj = createVehicle [(_dat select 0), call compile (_dat select 1), [], 0, _adString]; PG_event_Airport pushBack _obj; if((_dat select 4) == 0) then {_obj enableSimulation false;_obj allowDamage false; false};_obj setdir (_dat select 2);if((_dat select 3) == -100) then {_obj setposATL (call compile (_dat select 1))} else {_obj setposASL [((call compile (_dat select 1)) select 0),((call compile (_dat select 1)) select 1),(_dat select 3)]};if((_dat select 5) == 0) then {_obj setVectorUp [0,0,1]} else {_obj setVectorUp (surfacenormal (getPosATL _obj))};if(count (_dat select 6) > 0) then {{call _x} foreach (_dat select 6)}}; 
 
_dat = ["Land_CncBarrierMedium4_F","[14451.932617,16852.607422,0]",7.07071,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14459.244141,16851.699219,0]",7.07071,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14466.558594,16850.791016,0]",7.07071,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14472.754883,16847.714844,0]",46.0227,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14477.879883,16842.402344,0]",46.0227,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14483.0214844,16837.0722656,0]",46.0227,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14487.959961,16837.183594,0]",134.697,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14493.174805,16842.455078,0]",134.697,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14498.390625,16847.726563,0]",134.697,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14503.614258,16853.00585938,0]",134.697,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14508.80957,16858.257813,0]",134.697,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14513.991211,16863.496094,0]",134.697,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14519.18457,16868.746094,0]",134.697,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14524.394531,16874.0117188,0]",134.697,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14529.612305,16879.285156,0]",134.697,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14534.847656,16884.576172,0]",134.697,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14540.0361328,16889.820313,0]",134.697,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14545.22168,16895.0605469,0]",134.697,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14550.430664,16900.326172,0]",134.697,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14554.355469,16904.294922,0]",134.697,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14554.350586,16909.380859,0]",224.697,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14549.0908203,16914.585938,0]",224.697,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14543.878906,16919.744141,0]",224.697,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14541.208008,16922.388672,0]",224.697,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14537.927734,16928.507813,0]",258.977,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14536.505859,16935.802734,0]",258.977,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14535.0859375,16943.0898438,0]",258.977,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14533.675781,16950.328125,0]",258.977,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14532.967773,16953.960938,-9.53674e-007]",258.977,-100,1,0,[]];call _cString; 
_dat = ["Land_BarGate_F","[14490.109375,16823.568359,0]",315.48,-100,1,0,[]];call _cString; 
_dat = ["Land_BarGate_F","[14512.511719,16791.902344,-1.90735e-006]",44.9368,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14496.589844,16830.316406,0]",495.151,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14502.974609,16836.667969,0]",135.151,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14509.359375,16843.0195313,0]",495.151,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14515.744141,16849.371094,0]",135.151,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14522.128906,16855.722656,0]",495.151,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14528.513672,16862.0742188,0]",495.151,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14534.898438,16868.425781,0]",495.151,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14541.283203,16874.777344,0]",495.151,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14547.667969,16881.128906,0]",495.151,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14554.0527344,16887.480469,0]",495.151,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14560.4375,16893.832031,0]",135.151,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14567.931641,16895.765625,0]",555.568,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14575.400391,16891.462891,0]",584.482,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14581.825195,16885.152344,0]",584.482,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14588.25,16878.841797,0]",584.482,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14593.647461,16873.539063,0]",584.482,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14593.946289,16867.496094,0]",674.482,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14587.636719,16861.0703125,0]",674.482,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14581.327148,16854.644531,0]",674.482,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14575.0175781,16848.21875,0]",674.482,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14568.708008,16841.792969,0]",314.482,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14562.398438,16835.367188,0]",674.482,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14556.0888672,16828.941406,0]",674.482,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14549.779297,16822.515625,0]",674.482,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14543.469727,16816.0898438,0]",674.482,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14537.160156,16809.664063,0]",674.482,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14530.850586,16803.238281,0]",314.482,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14517.918945,16790.0703125,0]",314.482,-100,1,0,[]];call _cString; 
_dat = ["Land_BarGate_F","[14524.286133,16796.433594,-1.90735e-006]",314.482,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_Pole_F","[14521.0986328,16793.296875,0]",314.482,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_Pole_F","[14493.426758,16827.167969,0]",134.482,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14484.0996094,16817.578125,0]",494.482,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14478.735352,16812.117188,0]",494.482,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14473.367188,16806.652344,0]",494.482,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14467.985352,16801.171875,0]",134.482,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14467.609375,16795.392578,0]",592.878,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14472.674805,16789.683594,0]",583.914,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14478.199219,16784.365234,0]",583.914,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14483.712891,16779.0566406,0]",583.914,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14489.223633,16773.751953,0]",583.914,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14493.168945,16769.953125,0]",583.914,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14498.580078,16770.0332031,0]",673.914,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14503.886719,16775.544922,0]",673.914,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14509.21582,16781.0800781,0]",673.914,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14512.123047,16784.0996094,0]",313.914,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14506.443359,16797.925781,0]",45.302,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14501.0605469,16803.363281,0]",45.302,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14495.675781,16808.804688,0]",45.302,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14490.293945,16814.244141,0]",45.302,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14488.228516,16816.332031,0]",45.3024,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14496.525391,16824.171875,0]",765.302,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14502.859375,16817.771484,0]",765.302,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14509.193359,16811.371094,0]",45.302,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14513.404297,16807.115234,0]",45.302,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_Pole_F","[14516.585938,16803.951172,0]",45.302,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14526.198242,16853.580078,0]",945.302,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14532.532227,16847.179688,0]",225.302,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14538.866211,16840.779297,0]",225.302,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14542.700195,16836.888672,0]",224.103,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14531.580078,16819.861328,0]",314.544,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_3_F","[14517.550781,16804.904297,0]",314.54,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_3_F","[14519.658203,16807.046875,0]",1034.54,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_Pole_F","[14520.667969,16808.1875,0]",314.544,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_Pole_F","[14534.758789,16823.0917969,0]",314.544,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_3_F","[14544.831055,16832.6875,0]",314.54,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_3_F","[14542.723633,16830.552734,0]",314.544,-100,1,0,[]];call _cString; 
_dat = ["Land_Pipe_fence_4m_F","[14510.55957,16841.142578,0]",45.2975,-100,1,0,[]];call _cString; 
_dat = ["Land_Pipe_fence_4m_F","[14513.370117,16838.300781,0]",45.2975,-100,1,0,[]];call _cString; 
_dat = ["Land_Pipe_fence_4m_F","[14516.18457,16835.457031,0]",45.2975,-100,1,0,[]];call _cString; 
_dat = ["Land_Pipe_fence_4m_F","[14518.99707,16832.615234,0]",45.2975,-100,1,0,[]];call _cString; 
_dat = ["Land_Pipe_fence_4m_F","[14521.819336,16829.761719,0]",45.2975,-100,1,0,[]];call _cString; 
_dat = ["Land_Pipe_fence_4m_F","[14524.641602,16826.910156,0]",45.2975,-100,1,0,[]];call _cString; 
_dat = ["Land_Pipe_fence_4m_F","[14527.448242,16824.0742188,0]",45.2975,-100,1,0,[]];call _cString; 
_dat = ["Land_Pipe_fence_4m_F","[14530.254883,16821.238281,0]",45.2975,-100,1,0,[]];call _cString; 
_dat = ["Land_CncShelter_F","[14546.233398,16832.253906,0]",45.2975,-100,1,0,[]];call _cString; 
_dat = ["Land_CncShelter_F","[14547.769531,16830.703125,0]",45.2975,-100,1,0,[]];call _cString; 
_dat = ["Land_CncShelter_F","[14549.31543,16829.142578,0]",45.2975,-100,1,0,[]];call _cString; 
_dat = ["Land_CncShelter_F","[14550.854492,16827.587891,0]",45.2975,-100,1,0,[]];call _cString; 
_dat = ["Land_CncWall1_F","[14552.331055,16826.412109,-1.05471]",45.2975,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14517.519531,16784.191406,0]",584.444,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14522.981445,16778.835938,0]",584.444,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14528.442383,16773.482422,0]",584.444,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14533.899414,16768.130859,0]",584.444,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14539.363281,16762.773438,0]",584.444,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14544.825195,16757.417969,0]",584.444,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14550.242188,16757.46875,0]",674.444,-100,1,0,[]];call _cString; 
_dat = ["Land_PipeWall_concretel_8m_F","[14551.697266,16758.974609,0]",314.76,-100,1,0,[]];call _cString; 
_dat = ["Land_BarGate_F","[14557.59082,16765.228516,0]",313.812,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14599.929688,16867.326172,0]",584.76,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14606.324219,16860.986328,0]",584.76,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14612.71875,16854.646484,0]",584.76,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14619.113281,16848.306641,0]",584.76,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_9_F","[14625.507813,16841.966797,0]",224.76,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_3_F","[14627.835938,16837.681641,0]",666.956,-100,1,0,[]];call _cString; 
_dat = ["Land_IndFnc_3_F","[14626.0292969,16835.28125,0]",306.956,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14566.745117,16899.943359,0]",629.961,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14566.698242,16907.244141,0]",629.961,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14565.976563,16914.320313,0]",619.229,-100,1,0,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14562.541992,16920.457031,0.000827789]",223.602,-100,1,1,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14557.163086,16925.582031,0.000759125]",223.625,-100,1,1,[]];call _cString; 
_dat = ["Land_CncBarrierMedium4_F","[14553.711914,16931.623047,0.000675201]",256.825,-100,1,1,[]];call _cString; 
_dat = ["B_supplyCrate_F","[14567.366211,16778.863281,0.000576019]",315.729,-100,1,1,[]];call _cString; 
_dat = ["B_supplyCrate_F","[14566.231445,16777.757813,0.000576019]",315.729,-100,1,1,[]];call _cString; 
_dat = ["B_supplyCrate_F","[14565.0966797,16776.652344,0.000576019]",315.729,-100,1,1,[]];call _cString; 
_dat = ["B_supplyCrate_F","[14563.961914,16775.546875,0.000576019]",315.729,-100,1,1,[]];call _cString; 
_dat = ["B_supplyCrate_F","[14562.827148,16774.441406,0.000576019]",315.729,-100,1,1,[]];call _cString; 
_dat = ["B_supplyCrate_F","[14561.692383,16773.335938,0.000576019]",315.729,-100,1,1,[]];call _cString; 
_dat = ["B_supplyCrate_F","[14560.557617,16772.230469,0.000576019]",315.729,-100,1,1,[]];call _cString; 
_dat = ["B_supplyCrate_F","[14559.422852,16771.125,0.000576019]",315.729,-100,1,1,[]];call _cString; 
_dat = ["B_supplyCrate_F","[14470.0605469,16801.841797,0]",315.729,-100,1,0,[]];call _cString; 
_dat = ["B_supplyCrate_F","[14471.195313,16802.947266,0]",315.729,-100,1,0,[]];call _cString; 
_dat = ["B_supplyCrate_F","[14472.330078,16804.0527344,0]",315.729,-100,1,0,[]];call _cString; 
_dat = ["B_supplyCrate_F","[14473.464844,16805.158203,0]",315.729,-100,1,0,[]];call _cString; 
_dat = ["B_supplyCrate_F","[14474.599609,16806.263672,0]",315.729,-100,1,0,[]];call _cString; 
_dat = ["B_supplyCrate_F","[14475.734375,16807.369141,0]",315.729,-100,1,0,[]];call _cString; 
_dat = ["B_supplyCrate_F","[14476.869141,16808.474609,0]",315.729,-100,1,0,[]];call _cString; 
_dat = ["B_supplyCrate_F","[14478.00390625,16809.580078,0]",315.729,-100,1,0,[]];call _cString; 
_dat = ["B_supplyCrate_F","[14479.138672,16810.685547,0]",315.729,-100,1,0,[]];call _cString; 
 
{ 
 clearWeaponCargoGlobal _x; 
 clearItemCargoGlobal _x; 
 clearMagazineCargoGlobal _x; 
 clearBackpackCargoGlobal _x; 
} forEach PG_event_Airport; 
publicVariable "PG_event_Airport";