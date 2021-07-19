
execute as @a if score @p Saved = 0 NumberStorage run scoreboard players operation @p LeaderBoardTicks = Ticks PlayerTiming
execute as @a if score @p Saved = 0 NumberStorage run scoreboard players operation @p LeaderBoardSecs = Seconds PlayerTiming
execute as @a if score @p Saved = 0 NumberStorage run scoreboard players set @p Saved 1
execute as MaximumMaxx run say I was run