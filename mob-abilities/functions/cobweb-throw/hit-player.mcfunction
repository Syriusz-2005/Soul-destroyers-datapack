

damage @p 3 mob_attack

fill ~1 ~ ~ ~1 ~ ~ cobweb replace air
fill ~-1 ~ ~ ~-1 ~ ~ cobweb replace air
fill ~ ~ ~1 ~ ~ ~1 cobweb replace air
fill ~ ~ ~-1 ~ ~ ~-1 cobweb replace air

summon area_effect_cloud ~1 ~ ~ {Duration: 100,Tags:["mob-abilities.cobweb-marker"]}
summon area_effect_cloud ~-1 ~ ~ {Duration: 100,Tags:["mob-abilities.cobweb-marker"]}
summon area_effect_cloud ~ ~ ~1 {Duration: 100,Tags:["mob-abilities.cobweb-marker"]}
summon area_effect_cloud ~ ~ ~-1 {Duration: 100,Tags:["mob-abilities.cobweb-marker"]}


kill @s