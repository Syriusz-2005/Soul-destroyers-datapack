

execute at @a[distance=..0.7,tag=w.player] run effect give @p absorption 15 1
execute at @a[distance=..0.7,tag=w.player] run tp @s ~ ~-50 ~
execute at @a[distance=..0.7,tag=w.player] run effect clear @s glowing
execute at @a[distance=..0.7,tag=w.player] run kill @s

execute at @a[distance=..0.7,tag=w.player] run playsound entity.experience_orb.pickup master @a ~ ~ ~