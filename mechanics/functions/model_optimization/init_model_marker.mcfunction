
tag @s add mechanics.internal.modelMarker

data modify entity @s Rotation set from entity @e[distance=..2,type=#animated_java:root,tag=mechanics.internal.currentRig,limit=1,sort=nearest] Rotation

execute if entity @e[distance=..2,type=#animated_java:root,tag=aj.bandit.root,tag=mechanics.internal.currentRig] run tag @s add mechanics.internal.modelMarker.bandit
execute if entity @e[distance=..2,type=#animated_java:root,tag=aj.bandit_with_a_knife.root,tag=mechanics.internal.currentRig] run tag @s add mechanics.internal.modelMarker.bandit_with_a_knife
execute if entity @e[distance=..2,type=#animated_java:root,tag=aj.beggar_1.root,tag=mechanics.internal.currentRig] run tag @s add mechanics.internal.modelMarker.beggar_1
execute if entity @e[distance=..2,type=#animated_java:root,tag=aj.body.root,tag=mechanics.internal.currentRig] run tag @s add mechanics.internal.modelMarker.body
execute if entity @e[distance=..2,type=#animated_java:root,tag=aj.captain.root,tag=mechanics.internal.currentRig] run tag @s add mechanics.internal.modelMarker.captain
execute if entity @e[distance=..2,type=#animated_java:root,tag=aj.crab.root,tag=mechanics.internal.currentRig] run tag @s add mechanics.internal.modelMarker.crab
execute if entity @e[distance=..2,type=#animated_java:root,tag=aj.demo_title.root,tag=mechanics.internal.currentRig] run tag @s add mechanics.internal.modelMarker.demo_title
execute if entity @e[distance=..2,type=#animated_java:root,tag=aj.fish_seller.root,tag=mechanics.internal.currentRig] run tag @s add mechanics.internal.modelMarker.fish_seller
execute if entity @e[distance=..2,type=#animated_java:root,tag=aj.forest_guardian.root,tag=mechanics.internal.currentRig] run tag @s add mechanics.internal.modelMarker.forest_guardian
execute if entity @e[distance=..2,type=#animated_java:root,tag=aj.guardian_poc.root,tag=mechanics.internal.currentRig] run tag @s add mechanics.internal.modelMarker.guardian_poc
execute if entity @e[distance=..2,type=#animated_java:root,tag=aj.horse_skeleton_1.root,tag=mechanics.internal.currentRig] run tag @s add mechanics.internal.modelMarker.horse_skeleton_1
execute if entity @e[distance=..2,type=#animated_java:root,tag=aj.large_crab.root,tag=mechanics.internal.currentRig] run tag @s add mechanics.internal.modelMarker.large_crab
execute if entity @e[distance=..2,type=#animated_java:root,tag=aj.lava_spider.root,tag=mechanics.internal.currentRig] run tag @s add mechanics.internal.modelMarker.lava_spider
execute if entity @e[distance=..2,type=#animated_java:root,tag=aj.menu_title.root,tag=mechanics.internal.currentRig] run tag @s add mechanics.internal.modelMarker.menu_title
execute if entity @e[distance=..2,type=#animated_java:root,tag=aj.miner.root,tag=mechanics.internal.currentRig] run tag @s add mechanics.internal.modelMarker.miner
execute if entity @e[distance=..2,type=#animated_java:root,tag=aj.recruiter.root,tag=mechanics.internal.currentRig] run tag @s add mechanics.internal.modelMarker.recruiter
execute if entity @e[distance=..2,type=#animated_java:root,tag=aj.skeleton_1.root,tag=mechanics.internal.currentRig] run tag @s add mechanics.internal.modelMarker.skeleton_1
execute if entity @e[distance=..2,type=#animated_java:root,tag=aj.skeleton_lying_1.root,tag=mechanics.internal.currentRig] run tag @s add mechanics.internal.modelMarker.skeleton_lying_1


