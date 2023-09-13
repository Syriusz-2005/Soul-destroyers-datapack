

execute if entity @p[distance=..47] run return 1

tag @s add mechanics.internal.currentRig

execute summon marker run function mechanics:model_optimization/init_model_marker
function mechanics:model_optimization/remove_this_rig
tag @s remove mechanics.internal.currentRig