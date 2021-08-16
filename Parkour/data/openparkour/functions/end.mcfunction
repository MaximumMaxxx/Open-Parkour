scoreboard players set @p IsTiming 0
scoreboard players set Ticks PlayerTiming 0
scoreboard players operation Ticks PlayerTiming = @p PlayerTiming
scoreboard players operation Seconds PlayerTiming = @p PlayerTiming 
scoreboard players operation Ticks PlayerTiming %= 20 NumberStorage
scoreboard players operation Seconds PlayerTiming /= 20 NumberStorage
scoreboard players set @p Saved 0

#Checks if you hit all the checkpoints otherwise invalidates run
scoreboard players set @p IsValid 0
execute if score @p Checkpoint = Count CheckpointNumber run scoreboard players set @p IsValid 1

#a bunch of checks to see if your time should be saved or if your bad. 
execute if score @p IsValid matches 1 if score @p Saved matches 0 if score @p LeaderBoardSecs = 0 NumberStorage run function openparkour:save
execute if score @p IsValid matches 1 if score @p Saved matches 0 if score Seconds PlayerTiming < @p LeaderBoardSecs run function openparkour:save
execute if score @p IsValid matches 1 if score @p Saved matches 0 if score Ticks PlayerTiming < @p LeaderBoardTicks run function openparkour:save

#Set saved to 1 so that it still works if you don't set a new high score. Might be unnessecary idk I haven't tested it
scoreboard players set @p Saved 1

#Tellraw for the you did it text
execute if score @p IsValid matches 1 run tellraw @p ["",{"selector":"@p","color":"gold"},{"text":" has finished the parkour in ","color":"gold"},{"score":{"name":"Seconds","objective":"PlayerTiming"},"color":"gold"},{"text":" seconds and ","color":"gold"},{"score":{"name":"Ticks","objective":"PlayerTiming"},"color":"gold"},{"text":" ticks","color":"gold"}]
execute if score @p IsValid matches 0 run tellraw @p {"text":"It seems like you missed a checkpoint. Try again!","color":"#FF0000"}