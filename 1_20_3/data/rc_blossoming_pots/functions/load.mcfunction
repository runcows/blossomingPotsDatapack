# Setting up all necessary Data for this datapack

# scoreboards
scoreboard objectives add rc_blossoming_pots.range dummy "bPots.range"
scoreboard objectives add rc_blossoming_pots.summon_loop dummy "bPots.sum_loop"
scoreboard objectives add rc_blossoming_pots.merger_loop dummy "bPots.mer_loop"
scoreboard objectives add rc_blossoming_pots.catch_up_loop dummy "bPots.cat_loop"


# ok now for the data of every plant in a data storage
execute unless data storage rc_blossoming_pots:storage {version_history:[2]} run function rc_blossoming_pots:set_storage