# player facing west
execute if entity @s[y_rotation=45..135] run return run data merge entity @e[type=minecraft:marker,tag=rc_blossoming_pots.decPot,distance=..0.01,limit=1,sort=nearest] {data:{rotation:0}}
# player facing north
execute if entity @s[y_rotation=135..225] run return run data merge entity @e[type=minecraft:marker,tag=rc_blossoming_pots.decPot,distance=..0.01,limit=1,sort=nearest] {data:{rotation:90}}
# player facing east
execute if entity @s[y_rotation=225..315] run return run data merge entity @e[type=minecraft:marker,tag=rc_blossoming_pots.decPot,distance=..0.01,limit=1,sort=nearest] {data:{rotation:180}}
# player facing south
execute if entity @s[y_rotation=315..405] run return run data merge entity @e[type=minecraft:marker,tag=rc_blossoming_pots.decPot,distance=..0.01,limit=1,sort=nearest] {data:{rotation:-90}}