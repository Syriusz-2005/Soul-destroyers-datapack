scoreboard players remove @s ma.fungus_throw.preparation_cooldown 1

execute store result score #health mob-abilities.math run data get entity @s Health

execute if score @s ma.fungus_throw.preparation_cooldown matches 1 run scoreboard players add @s ma.fungus_throw.counter 1
execute if score @s ma.fungus_throw.preparation_cooldown matches 1 anchored eyes facing entity @p feet positioned ^ ^.3 ^ summon minecraft:block_display run function mob-abilities:guard_forest/init_fungus
execute if score @s ma.fungus_throw.preparation_cooldown matches 1 if score @s ma.fungus_throw.counter matches ..4 if score #health mob-abilities.math matches ..60 run function mob-abilities:guard_forest/throw_fungus