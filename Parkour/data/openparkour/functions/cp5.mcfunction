# Saved is just treated as a Boolean so we can make a psudo else statement

scoreboard players set @p Saved 0 

scoreboard players operation @p RequiredCP += 1 NumberStorage
execute if score @p Saved matches 1 if score @p Checkpoint matches 4 run tellraw @p {"text":"Checkpoint!","color":"gold"}
execute if score @p Saved matches 1 if score @p Checkpoint matches 4 run scoreboard players add @p Checkpoint 1
execute if score @p Saved matches 0 run tellraw @p {"text":"It seems like you missed a checkpoint. Try again!","color":"#FF0000"}