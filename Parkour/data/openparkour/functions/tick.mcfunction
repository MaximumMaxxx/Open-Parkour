#Effect Blocks

execute at @a if score SpeedTerracotta BlockToggle matches 1 if block ~ ~-1 ~ magenta_glazed_terracotta run effect give @p speed 1 10 false
execute at @a if score JumpyLimeConcrete BlockToggle matches 1 if block ~ ~-1 ~ lime_concrete_powder run effect give @p jump_boost 1 10 false
execute at @a if score SpeedyHoney BlockToggle matches 1 if block ~ ~ ~ honey_block run execute as @a unless predicate openparkour:is_sneaking run kill @p
execute at @a if score SneakyHoney BlockToggle matches 1 if block ~ ~ ~ honey_block run effect give @p speed 1 10 false
execute at @a if score FloatingCalcite BlockToggle matches 1 if block ~ ~-1 ~ calcite run effect give @p levitation 1 10 false
execute at @a if score DeathLava BlockToggle matches 1 if block ~ ~ ~ lava run kill @p
#Timer Section

#increase the timer for everyone who has isTiming = 1
execute at @a if score @p IsTiming matches 1 run scoreboard players add @p PlayerTiming 1 
