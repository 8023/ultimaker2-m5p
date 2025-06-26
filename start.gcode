; 加热底板
M140.1 S{max(bed_temperature_initial_layer[0],bed_temperature_initial_layer[1])}

; 归零初始化
G28
G21
G90
M83
M107

; 回到左前方等待
T0
G1 X0 Y0 F12000
G1 Z20 F1200

; 等待加热
M190.1 S{max(bed_temperature_initial_layer[0],bed_temperature_initial_layer[1]) - 10}
M104.1 T[initial_extruder] S{nozzle_temperature_initial_layer[initial_extruder]}
M190.1 S{max(bed_temperature_initial_layer[0],bed_temperature_initial_layer[1])}
M109.1 T[initial_extruder] S{nozzle_temperature_initial_layer[initial_extruder]}


; 擦嘴
T[initial_extruder]
G92 E0
G1 E20 F150
G1 E-10 F1200
G0 X30 Y0 Z0.1 F3000
G0 X80 F12000
G0 X50 F12000
G1 E10 F1200
G1 X80 E3 F1200
G1 X110 E4 F1200
G1 X140 F600
G1 X100 F2400
G1 X150 F2400
G1 Z2 F3000
G1 X{first_layer_print_min[0]} Y{first_layer_print_min[1]} F6000