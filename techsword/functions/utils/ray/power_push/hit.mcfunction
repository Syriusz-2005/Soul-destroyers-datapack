scoreboard players reset @p techsword.dist
damage @s 10 player_attack

function delta:api/explosion_particle
function delta:api/explosion_sound

# Launch
scoreboard players set $strength knockback.api.knockback_facing 30
function knockback:api/knockback_facing