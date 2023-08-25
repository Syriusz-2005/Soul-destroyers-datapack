# UNUSED
#define score_holder #Math used for calculations

# Mark players using techsword mechanic tool
tag @a[tag=techsword] remove techsword
tag @a[nbt={SelectedItem:{tag:{Tags:["techsword"]}}}] add techsword

# Manage cooldown
scoreboard players remove @a[scores={techsword.skill_cooldown=1..}] techsword.skill_cooldown 1
scoreboard players set @a[scores={techsword.skill_cooldown=1..}] techsword.parry_timer 0
scoreboard players remove @a[scores={techsword.attack_cooldown=1..}] techsword.attack_cooldown 1
execute as @a[tag=techsword] unless score @s techsword.attack_cooldown matches 1.. at @s anchored eyes run function techsword:utils/attack_by_id
# Reset stored attack if unequiped weapon
scoreboard players reset @a[tag=!techsword,scores={techsword.stored_attack_id=0..}] techsword.stored_attack_id

# Manage push scores
scoreboard players reset @a[scores={techsword.push_timer=..0}] techsword.push_counter

# Manage timers
scoreboard players remove @a[scores={techsword.push_timer=1..}] techsword.push_timer 1
scoreboard players remove @a[scores={techsword.sweep_timer=1..}] techsword.sweep_timer 1
scoreboard players remove @a[scores={techsword.parry_timer=1..}] techsword.parry_timer 1
scoreboard players remove @a[scores={techsword.attack_timer=1..}] techsword.attack_timer 1

# Remove slowness when now parrying
effect clear @a[scores={techsword.parry_timer=..0}] slowness
scoreboard players reset @a[scores={techsword.parry_timer=..0}] techsword.parry_timer

# Detect sweeping-motion
execute as @a[tag=techsword] at @s run function techsword:utils/detect_sweeping_motion

# Show cooldown bar
execute as @a[tag=techsword] run function techsword:utils/show_cooldown_bar

# Apply effects
execute as @e[scores={techsword.effects.parried=1..}] run function techsword:effects/parried

# Manage input
function techsword:summon_input_interaction/north
function techsword:summon_input_interaction/south
function techsword:summon_input_interaction/east
function techsword:summon_input_interaction/west
function techsword:summon_input_interaction/up
function techsword:summon_input_interaction/down