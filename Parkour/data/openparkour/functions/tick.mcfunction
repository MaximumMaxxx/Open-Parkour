#Effect Blocks

execute at @a if block ~ ~-1 ~ magenta_glazed_terracotta run effect give @p speed 1 10 false
execute at @a if block ~ ~-1 ~ lime_concrete_powder run effect give @p jump_boost 1 10 false
execute at @a if block ~ ~ ~ honey_block run execute as @a unless predicate max:is_sneaking run kill @p
execute at @a if block ~ ~ ~ honey_block run effect give @p speed 1 10 false
execute at @a if block ~ ~-1 ~ calcite run effect give @p levitation 1 10 false
execute at @a if block ~ ~ ~ lava run kill @p

#Timer Section

#increase the timer for everyone who has isTiming = 1
execute at @a if score @p IsTiming = 1 NumberStorage run scoreboard players add @p PlayerTiming 1 