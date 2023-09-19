#define tag mechanics.witness tag of mobs, that can increase your visibility, if looking at you
#define tag mechanics.hiding_spot Hiding spot entities (1 block range)
#define tag mechanics.partial_hiding_spot Hiding spot entities (1 block range)
#define tag mechanics.hidden_player Player that is hidden

scoreboard objectives add mechanics.exposure dummy

bossbar add minecraft:stealth {"text":"\uFFF2","font":"bossbars:bossbar"}
bossbar set stealth max 160
bossbar set stealth visible true
bossbar set stealth players @a

bossbar add stealthtime {"text":"\uFFF3","font":"bossbars:bossbar"}
bossbar set stealthtime max 1200
bossbar set stealthtime visible true
bossbar set stealthtime players @a