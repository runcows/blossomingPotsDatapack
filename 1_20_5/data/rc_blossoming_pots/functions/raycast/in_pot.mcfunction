# early return if not dec pot
execute unless block ~ ~ ~ minecraft:decorated_pot run return fail

# summon marker for checking
summon minecraft:marker ~ ~ ~ {Tags:["rc_blossoming_pots.decPot"]}

# no idea why this didn't work reliably
#execute as @e[type=minecraft:marker,tag=rc_blossoming_pots.decPot,distance=..0.1,sort=nearest,limit=1] \
    #align xyz positioned ~0.0625 ~ ~0.0625 if entity @s[dx=0.875,dy=1,dz=0.875] \
    #run return 1

execute as @e[type=minecraft:marker,tag=rc_blossoming_pots.decPot,distance=..0.1,sort=nearest,limit=1] store result score @s rc_blossoming_pots.range run data get entity @s Pos[0] 16000
scoreboard players operation @e[type=minecraft:marker,tag=rc_blossoming_pots.decPot,distance=..0.1,sort=nearest,limit=1] rc_blossoming_pots.range %= math rc_blossoming_pots.range
execute unless score @e[type=minecraft:marker,tag=rc_blossoming_pots.decPot,distance=..0.1,sort=nearest,limit=1] rc_blossoming_pots.range matches 1000..14999 run kill @e[type=minecraft:marker,tag=rc_blossoming_pots.decPot,distance=..0.1,sort=nearest]

execute as @e[type=minecraft:marker,tag=rc_blossoming_pots.decPot,distance=..0.1,sort=nearest,limit=1] store result score @s rc_blossoming_pots.range run data get entity @s Pos[2] 16000
scoreboard players operation @e[type=minecraft:marker,tag=rc_blossoming_pots.decPot,distance=..0.1,sort=nearest,limit=1] rc_blossoming_pots.range %= math rc_blossoming_pots.range
execute if score @e[type=minecraft:marker,tag=rc_blossoming_pots.decPot,distance=..0.1,sort=nearest,limit=1] rc_blossoming_pots.range matches 1000..14999 run return 1

# else, kill marker, return fail
kill @e[type=minecraft:marker,tag=rc_blossoming_pots.decPot,distance=..0.1,sort=nearest]
return fail