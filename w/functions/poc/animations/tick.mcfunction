return 1
execute as @e[type=#animated_java:root,tag=aj.guardian_poc.root] at @s unless entity @e[tag=w.poc-guardian,sort=nearest,limit=1,distance=..1] run function animated_java:guardian_poc/remove/this

execute as @e[type=#animated_java:root,tag=aj.guardian_poc.root] at @s run tp @s @e[tag=w.poc-guardian,sort=nearest,limit=1]
execute as @e[type=#animated_java:root,tag=aj.guardian_poc.root] at @s run tag @e[tag=w.poc-guardian,sort=nearest,limit=1] add w.poc-guardian-filled

execute as @e[tag=w.poc-guardian,tag=!w.poc-guardian-filled] at @s unless entity @e[type=#animated_java:root,tag=aj.guardian_poc.root,distance=..1] run function animated_java:guardian_poc/summon


execute as @e[type=#animated_java:root,tag=aj.guardian_poc.root] at @s run function w:poc/animations/as-model