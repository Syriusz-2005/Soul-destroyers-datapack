scoreboard players set $Delay w.shooting_range 0
execute as @e[type=guardian,tag=w.shooting_range.target] at @s run tp ~ ~-100 ~
kill @e[type=guardian,tag=w.shooting_range.target]
tag @e[type=marker,tag=w.shooting_range.targeted_dummy] remove w.shooting_range.targeted_dummy

# Save highscore
execute as @p[gamemode=!spectator] unless score @s w.shooting_range.score > $Highscore w.shooting_range.score run function mechanics:shooting_range/internal/game_over
execute as @p[gamemode=!spectator] if score @s w.shooting_range.score > $Highscore w.shooting_range.score run function mechanics:shooting_range/internal/new_highscore
scoreboard objectives setdisplay sidebar