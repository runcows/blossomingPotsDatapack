# decrement count
scoreboard players remove @s rc_blossoming_pots.summon_loop 1

# store the current score into storage
execute store result storage rc_blossoming_pots:storage temp.number int 1 run scoreboard players get @s rc_blossoming_pots.summon_loop

# summon block display
function rc_blossoming_pots:summon/display with storage rc_blossoming_pots:storage temp

# if there are more block displays to summon, run again
execute unless score @s rc_blossoming_pots.summon_loop matches 0 run function rc_blossoming_pots:summon/loop