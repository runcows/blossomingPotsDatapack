# this is run if there is and old plant display on the right click interact
    # as the marker so we can easily change the rotation data

# Old rotated plants
    # Cactus
        # check for one of the unique arms, set rotation
    # Sunflower
        # check transformation data
    # Big Dripleaf
        # check facing block state
    # Small Dripleaf
        # check facing block state

# only 4 commands each one, 16 total, probably better to just do the 16 ifs than a macro mapping to 4 commands

# player facing     WEST, NORTH, EAST, SOUTH

# cactus
execute if data block ~ ~ ~ {item:{id:"minecraft:cactus"}} \
    if entity @e[tag=decPotPlant,limit=1,distance=..0.2,nbt={transformation:{translation:[0.3f,1.2f,0.45f]}}] \
    run data modify entity @s data.rotation set value 0
execute if data block ~ ~ ~ {item:{id:"minecraft:cactus"}} \
    if entity @e[tag=decPotPlant,limit=1,distance=..0.2,nbt={transformation:{translation:[0.45f,1.1f,0.7f]}}] \
    run data modify entity @s data.rotation set value 90
execute if data block ~ ~ ~ {item:{id:"minecraft:cactus"}} \
    if entity @e[tag=decPotPlant,limit=1,distance=..0.2,nbt={transformation:{translation:[0.3f,1.3f,0.38f]}}] \
    run data modify entity @s data.rotation set value 180
execute if data block ~ ~ ~ {item:{id:"minecraft:cactus"}} \
    if entity @e[tag=decPotPlant,limit=1,distance=..0.2,nbt={transformation:{translation:[0.38f,1.25f,0.7f]}}] \
    run data modify entity @s data.rotation set value -90

# sunflower
execute if data block ~ ~ ~ {item:{id:"minecraft:sunflower"}} \
    if entity @e[tag=decPotPlant,limit=1,distance=..0.2,nbt={transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}] \
    run data modify entity @s data.rotation set value 0
execute if data block ~ ~ ~ {item:{id:"minecraft:sunflower"}} \
    if entity @e[tag=decPotPlant,limit=1,distance=..0.2,nbt={transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,-0.707f,0f,0.707f]}}] \
    run data modify entity @s data.rotation set value 90
execute if data block ~ ~ ~ {item:{id:"minecraft:sunflower"}} \
    if entity @e[tag=decPotPlant,limit=1,distance=..0.2,nbt={transformation:{left_rotation:[0f,0.707f,0f,0.707f],right_rotation:[0f,0.707f,0f,0.707f]}}] \
    run data modify entity @s data.rotation set value 180
execute if data block ~ ~ ~ {item:{id:"minecraft:sunflower"}} \
    if entity @e[tag=decPotPlant,limit=1,distance=..0.2,nbt={transformation:{left_rotation:[0f,0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f]}}] \
    run data modify entity @s data.rotation set value -90

# big dripleaf
execute if data block ~ ~ ~ {item:{id:"minecraft:big_dripleaf"}} \
    if data entity @e[tag=decPotPlant,limit=1,sort=nearest] {block_state:{Properties:{facing:"east"}}} \
    run data modify entity @s data.rotation set value 0
execute if data block ~ ~ ~ {item:{id:"minecraft:big_dripleaf"}} \
    if data entity @e[tag=decPotPlant,limit=1,sort=nearest] {block_state:{Properties:{facing:"south"}}} \
    run data modify entity @s data.rotation set value 90
execute if data block ~ ~ ~ {item:{id:"minecraft:big_dripleaf"}} \
    if data entity @e[tag=decPotPlant,limit=1,sort=nearest] {block_state:{Properties:{facing:"west"}}} \
    run data modify entity @s data.rotation set value 180
execute if data block ~ ~ ~ {item:{id:"minecraft:big_dripleaf"}} \
    if data entity @e[tag=decPotPlant,limit=1,sort=nearest] {block_state:{Properties:{facing:"north"}}} \
    run data modify entity @s data.rotation set value -90

# small dripleaf
execute if data block ~ ~ ~ {item:{id:"minecraft:small_dripleaf"}} \
    if data entity @e[tag=decPotPlant,limit=1,sort=nearest] {block_state:{Properties:{facing:"east"}}} \
    run data modify entity @s data.rotation set value 0
execute if data block ~ ~ ~ {item:{id:"minecraft:small_dripleaf"}} \
    if data entity @e[tag=decPotPlant,limit=1,sort=nearest] {block_state:{Properties:{facing:"south"}}} \
    run data modify entity @s data.rotation set value 90
execute if data block ~ ~ ~ {item:{id:"minecraft:small_dripleaf"}} \
    if data entity @e[tag=decPotPlant,limit=1,sort=nearest] {block_state:{Properties:{facing:"west"}}} \
    run data modify entity @s data.rotation set value 180
execute if data block ~ ~ ~ {item:{id:"minecraft:small_dripleaf"}} \
    if data entity @e[tag=decPotPlant,limit=1,sort=nearest] {block_state:{Properties:{facing:"north"}}} \
    run data modify entity @s data.rotation set value -90
