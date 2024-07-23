# Repeat every tick
schedule function rc_blossoming_pots:tick 1t
# could also be less frequent

# if old plant block display found, and version array doesn't reflect it, add ver1 to version history
execute if entity @e[tag=decPotPlant,type=minecraft:block_display] unless data storage rc_blossoming_pots:storage {version_history:[1]} run data modify storage rc_blossoming_pots:storage version_history prepend value 1

# delete block display when pot broken
execute as @e[tag=rc_blossoming_pots.decorPotPlant] at @s unless block ~ ~ ~ minecraft:decorated_pot run kill @s
execute as @e[tag=decPotPlant,type=minecraft:block_display] at @s unless block ~ ~ ~ minecraft:decorated_pot run kill @s
