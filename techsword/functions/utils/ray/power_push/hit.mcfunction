scoreboard players reset @p techsword.dist
damage @s 5 player_attack

# FX
playsound entity.player.attack.crit master @a ~ ~ ~ 1 1
particle crit ~ ~ ~ 0.25 0.25 0.25 1 7

# Launch
scoreboard players set $strength techsword.knockback_facing 30
execute rotated ~ 15 run function techsword:utils/knockback_facing