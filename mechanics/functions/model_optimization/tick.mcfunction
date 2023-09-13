

#declare tag mechanics.optimizableModel "Allows the model optimizer to take care of this model to improve tps"
#declare tag mechanics.internal.modelMarker

execute as @e[type=#animated_java:root,tag=mechanics.optimizableModel] at @s rotated as @s run function mechanics:model_optimization/tick_as_optimizable_model

execute as @e[type=marker,tag=mechanics.internal.modelMarker] at @s run function mechanics:model_optimization/tick_as_model_marker