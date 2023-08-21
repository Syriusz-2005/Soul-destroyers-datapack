
#declare tag w.freezer
#declare tag w.freeze
summon armor_stand ~ ~ ~ {NoGravity: true, Invisible: true, Invulnerable: true, Tags: ["w.freezeer"], Marker: true}

execute as @e[type=armor_stand,tag=w.freezer] at @s run ride @s mount @p

execute as @a[tag=w.freeze] run attribute @s generic.movement_speed base set 0

attribute @s generic.movement_speed modifier add 496bc503-8f07-4358-bd91-96de6b16f273 "freeze" -1 multiply
attribute @s generic.movement_speed modifier remove 496bc503-8f07-4358-bd91-96de6b16f273


summon text_display ~ ~ ~ {billboard:"vertical", text: '{"text": "Hello world", "color": "green"}'}


summon text_display ~ ~ ~ {billboard: "vertical", }


scoreboard players operation #w.gameState w.scenes = #SCENE_dialog w.scenes

scoreboard players operation #w.gameState w.scenes = #SCENE_concurrent-flows w.scenes
scoreboard players operation #w.gameState w.scenes = #SCENE_camera-move w.scenes
scoreboard players operation #w.gameState w.scenes = #SCENE_conditions w.scenes
scoreboard players operation #w.gameState w.scenes = #SCENE_model w.scenes
scoreboard players operation #w.gameState w.scenes = #SCENE_camera1 w.scenes
scoreboard players operation #w.gameState w.scenes = #SCENE_start-camera w.scenes
scoreboard players operation #w.gameState w.scenes = #SCENE_path-test w.scenes
scoreboard players operation #w.gameState w.scenes = #SCENE_transition w.scenes
scoreboard players operation #w.gameState w.scenes = #SCENE_emperor-speech-1 w.scenes
scoreboard players operation #w.gameState w.scenes = #SCENE_castle-travel w.scenes



summon zombie -248.2 71 -23.2 {Invulnerable:true,NoAI:true,Rotation:[-132f, 0f],Tags:["w.burglar","w.burglar-1", "w.no-fire"],Silent:true,HasVisualFire:false,HandItems: [{id: "minecraft:iron_axe",Count: 1}],PersistenceRequired:true}


summon armor_stand ~ ~ ~ {Rotation: [0.0f, 0.0f],NoGravity: true, Invulnerable: true}


summon text_display ~ ~ ~ {billboard:"fixed", text: '{"text": "Hello world", "color": "green"}',teleport_duration: 40}


# execute store success score ${scoreHolder} w.internal run


execute store result score %w.posX w.internal run data get entity @s Pos[0]
execute store result storage test:test test double 0.001 run say hi



execute as @e[type=#animated_java:root,tag=aj.beggar_1.root] run tp @s ~ ~ ~
execute as @e[type=#animated_java:root,tag=aj.guardian_poc.root,sort=nearest,limit=1] run tp @s ~ ~ ~
