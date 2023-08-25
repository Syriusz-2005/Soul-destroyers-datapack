advancement revoke @s only techsword:left_click
# say left mouse button clicked!

# Cancel parry timer
scoreboard players reset @s techsword.parry_timer
scoreboard players set @s techsword.skill_cooldown 10

execute if entity @s[tag=techsword] run function techsword:utils/find_matching_attack