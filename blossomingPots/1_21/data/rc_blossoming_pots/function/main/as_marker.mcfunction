# if old plant exists change marker rotation data and kill old plant
execute if entity @e[type=minecraft:block_display,tag=decPotPlant,distance=..0.2] \
    run function rc_blossoming_pots:update/get_old

# summon the required amount of block displays, without data
execute positioned ~.5 ~ ~.5 \
    unless entity @e[type=minecraft:block_display,tag=rc_blossoming_pots.decorPotPlant,distance=..0.2] \
    run function rc_blossoming_pots:summon/initialize with block ~ ~ ~ item

# if new block displays summoned, catch it up to count
execute if score @s rc_blossoming_pots.summon_loop matches 0 positioned ~.5 ~ ~.5 \
    run function rc_blossoming_pots:catch_up/initialize

# merge the data of the corresponding item amount variant with the block displays there
execute positioned ~.5 ~ ~.5 \
    if entity @e[type=minecraft:block_display,tag=rc_blossoming_pots.decorPotPlant,distance=..0.2] \
    run function rc_blossoming_pots:merge/initialize with block ~ ~ ~ item

# if merge score 0, succesfully merged data, play sound?
    # merge or summon?
        # merge score 0 triggers every pot interact, not ideal
        # summon score 0 triggers only on first summon, not ideal either, but better
    # ideally, we would only play sound on successful CHANGE, but not on bounce, and not on just right click
execute if score @s rc_blossoming_pots.summon_loop matches 0 positioned ~.5 ~.5 ~.5 run function rc_blossoming_pots:sound/find with block ~ ~ ~ item

# kill marker
kill @s