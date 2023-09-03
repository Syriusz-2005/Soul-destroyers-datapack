


execute store result score #temp.currentHp w.internal run data get entity @s Health

scoreboard players operation #temp.delta w.internal = #temp.currentHp w.internal
scoreboard players operation #temp.delta w.internal -= @s mechanics.puppet.lastHp

execute unless score #temp.delta w.internal matches 0 run effect give @s instant_health 1 100 true
execute unless score #temp.delta w.internal matches 0 run tellraw @a "I was hurt!"

execute store result score @s mechanics.puppet.lastHp run data get entity @s Health