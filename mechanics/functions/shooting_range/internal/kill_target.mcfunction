# Give score
scoreboard players add @p[gamemode=!spectator] w.shooting_range.score 1

title @p[gamemode=!spectator] times 0 20 20
title @p[gamemode=!spectator] title {"text":""}
# Give some feedback about how well it was shoot
# How?!
execute if score @s w.shooting_range matches 0..5 as @p[gamemode=!spectator] run title @s subtitle [{"text":"H","color":"dark_aqua"},{"text":"o","color":"#1fdede"},{"text":"w","color":"aqua"},{"text":"?","color":"#3ffe9e"},{"text":"!","color":"green"}]
execute if score @s w.shooting_range matches 0..5 at @p[gamemode=!spectator] run playsound entity.player.levelup master @a ~ ~ ~ 1 1.05
# Sick!
execute if score @s w.shooting_range matches 6..20 as @p[gamemode=!spectator] run title @s subtitle [{"text":"S","color":"#ffc600"},{"text":"i","color":"#fef02f"},{"text":"c","color":"yellow"},{"text":"k","color":"#f4e73c"},{"text":"!","color":"gold"}]
execute if score @s w.shooting_range matches 6..20 at @p[gamemode=!spectator] run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1.5
# Good
execute if score @s w.shooting_range matches 21..45 as @p[gamemode=!spectator] run title @s subtitle [{"text":"Good","color":"gold"}]
execute if score @s w.shooting_range matches 21..45 at @p[gamemode=!spectator] run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1
# Bad
execute if score @s w.shooting_range matches 46..70 as @p[gamemode=!spectator] run title @s subtitle [{"text":"Bad","color":"red"}]
execute if score @s w.shooting_range matches 46..70 at @p[gamemode=!spectator] run playsound entity.experience_orb.pickup master @p ~ ~ ~ 1 0.75
# Shit
execute if score @s w.shooting_range matches 71.. as @p[gamemode=!spectator] run title @s subtitle [{"text":"Shit","color":"dark_gray"}]

# Kill
tp @s ~ -100 ~
tag @e[type=marker,tag=w.shooting_range.targeted_dummy,limit=1,sort=nearest] remove w.shooting_range.targeted_dummy
kill @s