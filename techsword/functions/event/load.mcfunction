#define score_holder &strength strength of knockback/launch
scoreboard objectives add techsword.knockback_facing dummy
scoreboard objectives add techsword.stored_attack_id dummy
scoreboard objectives add techsword.dist dummy
scoreboard objectives add techsword.push_timer dummy
scoreboard objectives add techsword.push_counter dummy
scoreboard objectives add techsword.sweep_timer dummy

# Usless frigin shid that only takes two values, what a waste of memory >:(((
scoreboard objectives add techsword.sweep_direction dummy
scoreboard objectives add techsword.last_wide_attack_direction dummy

scoreboard objectives add techsword.attack_cooldown dummy
scoreboard objectives add techsword.skill_cooldown dummy
scoreboard objectives add techsword.rotation_0 dummy
scoreboard objectives add techsword.rotation_0_delta dummy
#scoreboard objectives add techsword.pos_x dummy
#scoreboard objectives add techsword.v_x dummy
#scoreboard objectives add techsword.pos_z dummy
#scoreboard objectives add techsword.v_z dummy

# Used for math
scoreboard objectives add techsword.math dummy

# Effects
scoreboard objectives add techsword.effects.parried dummy
scoreboard objectives add techsword.parry_timer dummy

scoreboard objectives add techsword.is_player_walking minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add techsword.is_player_crouching minecraft.custom:minecraft.crouch_one_cm