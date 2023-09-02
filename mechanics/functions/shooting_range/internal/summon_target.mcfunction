summon guardian ~ ~ ~ {Tags:["w.shooting_range.target"],Glowing:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}],DeathLootTable:""}
execute as @e[type=guardian,tag=w.shooting_range.target,limit=1,sort=nearest] run team join w.shooting_range.target @s
tag @s add w.shooting_range.targeted_dummy