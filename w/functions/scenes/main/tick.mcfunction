
effect give @a[tag=w.player] saturation infinite 1 true

execute in w:warland positioned -193 -13 49 run particle cloud ~ ~ ~ 2 3 2 0 1 normal

#declare tag w.no-fire
execute as @e[tag=w.no-fire] run data modify entity @s Fire set value -2