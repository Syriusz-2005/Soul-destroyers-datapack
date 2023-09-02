# Timer
scoreboard players remove $Timer w.shooting_range 1

# Summon new Target
execute if score $Timer w.shooting_range matches ..0 as @e[type=marker,tag=w.shooting_range.dummy,tag=!w.shooting_range.targeted_dummy,limit=1,sort=random] at @s run function mechanics:shooting_range/internal/summon_target

execute if score $Timer w.shooting_range matches ..0 run function mechanics:shooting_range/internal/increase_difficulty
execute if score $Delay w.shooting_range matches 1.. if score $Timer w.shooting_range matches ..0 run scoreboard players operation $Timer w.shooting_range = $Delay w.shooting_range

# Check target
execute as @e[type=guardian,tag=w.shooting_range.target] at @s run function mechanics:shooting_range/internal/target_tick