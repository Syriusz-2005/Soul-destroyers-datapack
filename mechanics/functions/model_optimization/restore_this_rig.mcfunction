

execute if entity @s[tag=mechanics.internal.modelMarker.bandit] run function animated_java:bandit/summon
execute if entity @s[tag=mechanics.internal.modelMarker.bandit_with_a_knife] run function animated_java:bandit_with_a_knife/summon
execute if entity @s[tag=mechanics.internal.modelMarker.beggar_1] run function animated_java:beggar_1/summon
execute if entity @s[tag=mechanics.internal.modelMarker.body] run function animated_java:body/summon
execute if entity @s[tag=mechanics.internal.modelMarker.captain] run function animated_java:captain/summon
execute if entity @s[tag=mechanics.internal.modelMarker.crab] run function animated_java:crab/summon
execute if entity @s[tag=mechanics.internal.modelMarker.demo_title] run function animated_java:demo_title/summon
execute if entity @s[tag=mechanics.internal.modelMarker.fish_seller] run function animated_java:fish_seller/summon
execute if entity @s[tag=mechanics.internal.modelMarker.forest_guardian] run function animated_java:forest_guardian/summon
execute if entity @s[tag=mechanics.internal.modelMarker.guardian_poc] run function animated_java:guardian_poc/summon
execute if entity @s[tag=mechanics.internal.modelMarker.horse_skeleton_1] run function animated_java:horse_skeleton_1/summon
execute if entity @s[tag=mechanics.internal.modelMarker.large_crab] run function animated_java:large_crab/summon
execute if entity @s[tag=mechanics.internal.modelMarker.lava_spider] run function animated_java:lava_spider/summon
execute if entity @s[tag=mechanics.internal.modelMarker.menu_title] run function animated_java:menu_title/summon
execute if entity @s[tag=mechanics.internal.modelMarker.miner] run function animated_java:miner/summon
execute if entity @s[tag=mechanics.internal.modelMarker.recruiter] run function animated_java:recruiter/summon
execute if entity @s[tag=mechanics.internal.modelMarker.skeleton_1] run function animated_java:skeleton_1/summon
execute if entity @s[tag=mechanics.internal.modelMarker.skeleton_lying_1] run function animated_java:skeleton_lying_1/summon


execute as @e[tag=aj.rig_root,limit=1,sort=nearest,distance=..1] run tag @s add mechanics.optimizableModel


