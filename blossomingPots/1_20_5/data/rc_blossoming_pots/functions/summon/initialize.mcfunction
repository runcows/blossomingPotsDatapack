# executed AS the Marker AT the marker, aligned xyz then .5 forward in x and z
    # so essentially center of the block but on the ground
    # ALSO WITH THE DATA OF THE BLOCK
$execute unless data storage rc_blossoming_pots:storage $(id) run return 1
# merge rotation data from marker into storage
data modify storage rc_blossoming_pots:storage temp.marker set from entity @s data.rotation

# set score of marker to the display count of the item in the pot, (number of block displays to summon)
$execute store result score @s rc_blossoming_pots.summon_loop run data get storage rc_blossoming_pots:storage $(id).display_count

# now, the rotation is stored, the pot data is stored, the scoreboard is set up
function rc_blossoming_pots:summon/loop

# reset score for marker
#scoreboard players reset @s rc_blossoming_pots.summon_loop
# clear temp
data remove storage rc_blossoming_pots:storage temp