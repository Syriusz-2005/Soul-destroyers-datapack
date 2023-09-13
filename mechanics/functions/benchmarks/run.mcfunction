

execute store result score #rigsCount w.internal if entity @e[tag=aj.rig_root]
execute store result score #optimizableModelsCount w.internal if entity @e[tag=mechanics.optimizableModel]
execute store result score #hiddenModelsCount w.internal if entity @e[tag=mechanics.internal.modelMarker]


tellraw @a {"text": "Current model optimizer state:", "bold": true, "color": "gold","underlined": true}
tellraw @a [{"text": "\nAnimated java models count: "}, {"score": {"name": "#rigsCount", "objective": "w.internal"}, "color": "aqua"}]
tellraw @a [{"text": "\nModels marked as optimizable: "}, {"score": {"name": "#optimizableModelsCount", "objective": "w.internal"}, "color": "aqua"}]
tellraw @a [{"text": "\nModels hidden by the optimizer: "}, {"score": {"name": "#hiddenModelsCount", "objective": "w.internal"}, "color": "aqua"}]
tellraw @a {"text": "\n"}
