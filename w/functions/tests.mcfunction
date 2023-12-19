
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


summon wandering_trader ~ ~ ~ {Tags: ["fxczs"],Invulnerable:true,Silent:true,ActiveEffects: [{Id:14,ShowParticles:false,Duration: 999999999}]} 


execute store result score @s w.modelSkeleton.lastHp run data get entity @s Health

summon minecraft:skeleton ~ ~ ~ {Tags:["w.lavaSpider.skeleton", "mob-abilities.cobweb-thrower"],HandItems:[{},{}],DeathLootTable:"health:burglar",Attributes:[{Name:"minecraft:generic.follow_range",Base: 40}]}


summon wandering_trader ~ ~ ~ {WanderTarget:{X:-256, Y:1, Z:-104}}
data merge entity @e[type=wandering_trader,sort=nearest,limit=1] {WanderTarget:{X:-236,Y:1,Z:-110}}

#removing cursed forest effect
particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98039215686274509803921568627451 0 1 0 force @s



summon minecraft:skeleton ~ ~ ~ {Tags: ["w.forestGurdian.skeleton","mob-abilities.guard_forest"]}

#optimizing a model
execute as @e[tag=aj.rig_root,limit=1,sort=nearest,distance=..2] run tag @s add mechanics.optimizableModel


summon minecraft:text_display ~ ~ ~ {background: 0, billboard:"vertical", text:'{"text": "\\uE000"}'}


summon horse -1058.55 86.00 -268.76 {Tags: ["w.lordHorse"],NoAI:true,Passengers:[{id: "minecraft:villager",Silent:true,Invulnerable:true,Tags:["w.lord.skeleton"]}]}


function mechanics:visibility/summon_witness


execute positioned -1076.69 92.00 -193.51 run function mechanics:visibility/summon_hiding_spot

give @s minecraft:barrier{ajjgui:{Widget:"button",Command:"say reseting the points"},display:{Name:'{"text":"Reset the kit"}'}}
