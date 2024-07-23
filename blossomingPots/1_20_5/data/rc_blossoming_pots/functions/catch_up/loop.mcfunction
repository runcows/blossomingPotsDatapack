# increment count
scoreboard players add @s rc_blossoming_pots.catch_up_loop 1

data modify storage rc_blossoming_pots:storage temp.id set from block ~ ~ ~ item.id
execute store result storage rc_blossoming_pots:storage temp.count int 1 run scoreboard players get @s rc_blossoming_pots.catch_up_loop
$execute store result score @s rc_blossoming_pots.merger_loop run data get storage rc_blossoming_pots:storage $(id).display_count
function rc_blossoming_pots:merge/loop


$execute unless score @s rc_blossoming_pots.catch_up_loop matches $(count).. run function rc_blossoming_pots:catch_up/loop with block ~ ~ ~ item
data remove storage rc_blossoming_pots:storage temp