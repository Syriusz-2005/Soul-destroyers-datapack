

execute as @a[tag=w.player] at @s run function health:as-player


scoreboard players remove %15s timers 1
execute if score %15s timers matches ..-1 run scoreboard players set %15s timers 300