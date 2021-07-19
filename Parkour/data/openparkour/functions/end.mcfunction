scoreboard players set @p IsTiming 0
scoreboard players set Ticks PlayerTiming 0
scoreboard players operation Ticks PlayerTiming = @p PlayerTiming
scoreboard players operation Seconds PlayerTiming = @p PlayerTiming 
scoreboard players operation Ticks PlayerTiming %= 20 NumberStorage
scoreboard players operation Seconds PlayerTiming /= 20 NumberStorage
scoreboard players set @p Saved 0


execute if score @p Saved = 0 NumberStorage if score @p LeaderBoardSecs = 0 NumberStorage run function openparkour:save
execute if score @p Saved = 0 NumberStorage run execute if score @p LeaderBoardSecs > 0 NumberStorage run execute if score Seconds PlayerTiming < @p LeaderBoardSecs run function openparkour:save
execute if score @p Saved = 0 NumberStorage run execute if score @p LeaderBoardSecs > 0 NumberStorage run execute if score Seconds PlayerTiming < @p LeaderBoardSecs run execute if score Ticks PlayerTiming < @p LeaderBoardTicks run function openparkour:save
scoreboard players set @p Saved 1

tellraw @p ["",{"selector":"@p","color":"gold"},{"text":" has finished the parkour in ","color":"gold"},{"score":{"name":"Seconds","objective":"PlayerTiming"},"color":"gold"},{"text":" seconds and ","color":"gold"},{"score":{"name":"Ticks","objective":"PlayerTiming"},"color":"gold"},{"text":" ticks","color":"gold"}]