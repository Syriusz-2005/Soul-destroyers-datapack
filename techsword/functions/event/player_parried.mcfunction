advancement revoke @s only techsword:player_parried

# Knockback parried entities that attack player
execute as @a[tag=techsword] positioned as @s on attacker if score @s techsword.effects.parried matches 1.. run function techsword:utils/on_parried_attacked

#DEBUG
# say PARRY!