
execute unless score @s mechanics.puppet.lastHp matches -2147483648..2147483647 store result score @s mechanics.puppet.lastHp run data get entity @s Health

execute store result score #temp.currentHp w.internal run data get entity @s Health

scoreboard players operation #temp.delta w.internal = @s mechanics.puppet.lastHp
scoreboard players operation #temp.delta w.internal -= #temp.currentHp w.internal

execute unless score #temp.delta w.internal matches 0 run data merge entity @s {Health:100f}
execute unless score #temp.delta w.internal matches 0 run tellraw @a [{"text": ""},{"score": {"objective": "w.internal","name": "#temp.delta"}},{"text": " dmg points"}]

execute store result score @s mechanics.puppet.lastHp run data get entity @s Health