

execute as @e[tag=aj.lords_guards.root,sort=nearest,limit=1,distance=..10] run function animated_java:lords_guards/animations/attack_slash/play


scoreboard players set @s ma.halberdAttack.preparation_cooldown 18