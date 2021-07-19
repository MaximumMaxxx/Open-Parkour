scoreboard players set @p IsTiming 1
scoreboard players set @p PlayerTiming 0

execute unless score @p LeaderBoardSecs > 0 NumberStorage run scoreboard players set @p LeaderBoardSecs 0 