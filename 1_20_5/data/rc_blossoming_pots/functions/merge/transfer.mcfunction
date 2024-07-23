# we need to
    # target select the right block display
        # use temp.number for numbered tag
        # limit=1,sort=nearest,distance=..0.2
    # data modify entity @s <PATH???> merge from storage rc_blossoming_pots:storage $(temp.pot.id).$(temp.pot.count)[$(temp.number)]

# CUCKED BY DATA AAAAAA
# i have to go another function deeper, if this uses instanced data for functions, which i think it does actually
    # it caches the data
$execute unless data storage rc_blossoming_pots:storage $(id).$(count) run return 1
    # bail out if there isnt anything to merge here
$data modify storage rc_blossoming_pots:storage temp.merge set from storage rc_blossoming_pots:storage $(id).$(count)[$(number)]
$execute as @e[tag=rc_blossoming_pots.decorPotPlant$(number),limit=1,sort=nearest,distance=..0.2] run function rc_blossoming_pots:merge/display with storage rc_blossoming_pots:storage temp