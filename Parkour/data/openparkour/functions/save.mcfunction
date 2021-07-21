execute as @a if score @p Saved matches 0 run scoreboard players operation @p LeaderBoardTicks = Ticks PlayerTiming
execute as @a if score @p Saved matches 0 run scoreboard players operation @p LeaderBoardSecs = Seconds PlayerTiming
execute as @a if score @p Saved matches 0 run scoreboard players set @p Saved 1
