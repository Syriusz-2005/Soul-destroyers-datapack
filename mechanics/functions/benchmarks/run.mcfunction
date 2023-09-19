

execute store result score #rigsCount w.internal if entity @e[tag=aj.rig_root]
execute store result score #optimizableModelsCount w.internal if entity @e[tag=mechanics.optimizableModel]
execute store result score #hiddenModelsCount w.internal if entity @e[tag=mechanics.internal.modelMarker]

execute store result score #loadedEntitiesCount w.internal if entity @e
execute store result score #loadedEntitiesInDimension w.internal if entity @e[distance=0.01..]
execute store result score #loadedNearbyEntities w.internal if entity @e[distance=..50]

execute store result score #pathfindersCount w.internal if entity @e[type=wandering_trader]
execute store result score #soulsCount w.internal if entity @e[tag=w.soul]
execute store result score #markersCount w.internal if entity @e[type=marker]
execute store result score #aecCount w.internal if entity @e[type=area_effect_cloud]
execute store result score #armorStandsCount w.internal if entity @e[type=armor_stand]
execute store result score #blockDisplaysCount w.internal if entity @e[type=block_display]
execute store result score #textDisplaysCount w.internal if entity @e[type=text_display]
execute store result score #itemDisplaysCount w.internal if entity @e[type=item_display]
execute store result score #itemFramesCount w.internal if entity @e[type=item_frame]






tellraw @a {"text": "\n\n\n\nCurrent Optimizer status:", "bold": true, "color": "gold","underlined": true}
tellraw @a [{"text": "\n\n& Models optimizer &\n", "color": "gold"}]


tellraw @a [{"text": "Loaded models: ", "color": "gray"}, {"score": {"name": "#rigsCount", "objective": "w.internal"}, "color": "aqua"}]
tellraw @a [{"text": "Models marked as optimizable: ", "color": "gray"}, {"score": {"name": "#optimizableModelsCount", "objective": "w.internal"}, "color": "aqua"}]
tellraw @a [{"text": "Models hidden by the optimizer: ", "color": "gray"}, {"score": {"name": "#hiddenModelsCount", "objective": "w.internal"}, "color": "aqua"}]


tellraw @a [{"text": "\n\n& Loaded entities status &\n", "color": "gold"}]
tellraw @a [{"text": "All entities: ", "color": "gray"}, {"score": {"name": "#loadedEntitiesCount", "objective": "w.internal"}, "color": "aqua"}]
tellraw @a [{"text": "Entities in the current dimension: ", "color": "gray"}, {"score": {"name": "#loadedEntitiesInDimension", "objective": "w.internal"}, "color": "aqua"}]
tellraw @a [{"text": "Entities in the 50 blocks radius: ", "color": "gray"}, {"score": {"name": "#loadedNearbyEntities", "objective": "w.internal"}, "color": "aqua"}]

tellraw @a [{"text": "\n\n& Entity types &\n", "color": "gold"}]
tellraw @a [{"text": "Pathfinders count: ", "color": "gray"}, {"score": {"name": "#pathfindersCount", "objective": "w.internal"}, "color": "aqua"}]
tellraw @a [{"text": "Markers count: ", "color": "gray"}, {"score": {"name": "#markersCount", "objective": "w.internal"}, "color": "aqua"}]
tellraw @a [{"text": "AEC count: ", "color": "gray"}, {"score": {"name": "#aecCount", "objective": "w.internal"}, "color": "aqua"}]
tellraw @a [{"text": "Armor stands count: ", "color": "gray"}, {"score": {"name": "#armorStandsCount", "objective": "w.internal"}, "color": "aqua"}]
tellraw @a [{"text": "Block displays count: ", "color": "gray"}, {"score": {"name": "#blockDisplaysCount", "objective": "w.internal"}, "color": "aqua"}]
tellraw @a [{"text": "Text displays count: ", "color": "gray"}, {"score": {"name": "#textDisplaysCount", "objective": "w.internal"}, "color": "aqua"}]
tellraw @a [{"text": "Item displays count: ", "color": "gray"}, {"score": {"name": "#itemDisplaysCount", "objective": "w.internal"}, "color": "aqua"}]
tellraw @a [{"text": "Item frames count: ", "color": "gray"}, {"score": {"name": "#itemFramesCount", "objective": "w.internal"}, "color": "aqua"}]

tellraw @a {"text": "\n"}
