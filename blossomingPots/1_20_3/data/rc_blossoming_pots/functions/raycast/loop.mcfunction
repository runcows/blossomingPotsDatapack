execute if function rc_blossoming_pots:raycast/in_pot run return run function rc_blossoming_pots:raycast/player_rotation

# remove range
scoreboard players remove @s rc_blossoming_pots.range 1

# repeat until find decorated pot or out of range
execute if score @s rc_blossoming_pots.range matches 1.. positioned ^ ^ ^0.005 run function rc_blossoming_pots:raycast/loop