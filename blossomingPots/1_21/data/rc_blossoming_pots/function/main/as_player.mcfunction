# Raycast for the pot (set up range and search)
scoreboard players set math rc_blossoming_pots.range 16000
scoreboard players set @s rc_blossoming_pots.range 1200
function rc_blossoming_pots:raycast/loop
scoreboard players reset math rc_blossoming_pots.range

execute as @e[type=minecraft:marker,sort=nearest,tag=rc_blossoming_pots.decPot] at @s align xyz run function rc_blossoming_pots:main/as_marker

# Reset advancement
advancement revoke @s only rc_blossoming_pots:item_in_pot