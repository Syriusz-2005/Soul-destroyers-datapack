
# Launch
scoreboard players set $strength techsword.knockback_facing -13
execute rotated as @s rotated ~ -15 run function techsword:utils/knockback_facing

# FX
execute at @s anchored eyes run function techsword:vfx/parried

# Clear parried effect
scoreboard players set @s techsword.effects.parried 0