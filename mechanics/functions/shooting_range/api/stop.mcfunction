scoreboard players set $Delay w.shooting_range 0
execute as @e[type=guardian,tag=w.shooting_range.target] at @s run tp ~ ~-100 ~
kill @e[type=guardian,tag=w.shooting_range.target]
tag @e[type=marker,tag=w.shooting_range.targeted_dummy] remove w.shooting_range.targeted_dummy

# Validate achievements
execute as @p[gamemode=!spectator] if score @s w.shooting_range.score matches 30.. run advancement grant @s only w:soul_destroyers/achievements/shooting_range_score_30
execute as @p[gamemode=!spectator] if score @s w.shooting_range.score matches 50.. run advancement grant @s only w:soul_destroyers/achievements/shooting_range_score_50
# Save highscore
execute as @p[gamemode=!spectator] unless score @s w.shooting_range.score > $Highscore w.shooting_range.score run function mechanics:shooting_range/internal/game_over
execute as @p[gamemode=!spectator] if score @s w.shooting_range.score > $Highscore w.shooting_range.score run function mechanics:shooting_range/internal/new_highscore
scoreboard objectives setdisplay sidebar