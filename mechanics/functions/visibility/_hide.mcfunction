tag @s add mechanics.hidden_player
playsound minecraft:item.armor.equip_generic master @a ~ ~ ~ 1 0.7

execute if entity @e[tag=mechanics.final_hiding_spot,distance=..1] run function w:generated/evaporation_pt3/0-0