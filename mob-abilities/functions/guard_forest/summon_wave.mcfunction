
execute as @e[tag=aj.forest_guardian.root,limit=1] run function animated_java:forest_guardian/animations/summon_roots/play

execute facing entity @p feet summon marker run function mob-abilities:guard_forest/init_wave

effect give @s resistance 2 10 false