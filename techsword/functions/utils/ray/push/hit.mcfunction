scoreboard players reset @p techsword.dist
damage @s 1 player_attack

# Launch
scoreboard players set $strength techsword.knockback_facing 14
execute rotated ~ -5 run function techsword:utils/knockback_facing



# Apply statistics
scoreboard players set @p techsword.push_timer 18
scoreboard players add @p techsword.push_counter 1