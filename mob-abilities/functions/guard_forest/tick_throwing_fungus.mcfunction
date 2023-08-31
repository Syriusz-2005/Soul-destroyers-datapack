scoreboard players remove @s ma.fungus_throw.preparation_cooldown 1


execute if score @s ma.fungus_throw.preparation_cooldown matches 1 anchored eyes facing entity @p feet positioned ^ ^.3 ^ summon minecraft:block_display run function mob-abilities:guard_forest/init_fungus
