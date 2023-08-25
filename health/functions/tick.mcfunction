

execute as @a[tag=w.player] at @s run function health:as-player


scoreboard players remove %15s timers 1
execute if score %15s timers matches ..-1 run scoreboard players set %15s timers 300


#declare tag w.soul
#declare tag w.soul.after-spawn
execute as @e[tag=w.soul,tag=!w.soul.after-spawn] run effect give @s glowing infinite 1 true
execute as @e[tag=w.soul,tag=!w.soul.after-spawn] run team join blue @s
execute as @e[tag=w.soul,tag=!w.soul.after-spawn] run tag @s add w.soul.after-spawn

execute as @e[tag=w.soul] at @s run function health:as-soul