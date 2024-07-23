# executed AS the Marker AT the marker, aligned xyz then .5 forward in x and z
    # so essentially center of the block but on the ground
    # ALSO WITH THE DATA OF THE BLOCK


# we'll need a loop function to iterate over the index in storage and the cooresponding tags of block displays within range of marker
    # n -> 0 stop when 0
$execute unless data storage rc_blossoming_pots:storage $(id) run return 1
# store pot data in temp
$data modify storage rc_blossoming_pots:storage temp set value {id:"$(id)",count:$(Count)}

# set score of marker to the display count of the item in the pot, (number of block displays to modify)
$execute store result score @s rc_blossoming_pots.merger_loop run data get storage rc_blossoming_pots:storage $(id).display_count

# now, the rotation is stored, the pot data is stored, the scoreboard is set up
function rc_blossoming_pots:merge/loop

# reset score for marker
#scoreboard players reset @s rc_blossoming_pots.merger_loop
# clear temp
data remove storage rc_blossoming_pots:storage temp