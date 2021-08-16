tellraw @p {"text":"Open parkour by MaximumMaxx","color":"gold","clickEvent":{"action":"open_url","value":"https://github.com/MaximumMaxxx/Open-Parkour"}}

#setting up scoreboards for timers
scoreboard objectives add LeaderBoardSecs dummy
scoreboard objectives add LeaderBoardTicks dummy
scoreboard objectives add IsTiming dummy
scoreboard objectives add PlayerTiming dummy
scoreboard objectives add Saved dummy


#You can't compare to an integer only between two scores for some things so I used a NumberStorage Scoreboard where the player is = to it's value. its pretty dumb and I wish you didnt have to do that but you do.
scoreboard objectives add NumberStorage dummy
scoreboard players set 20 NumberStorage 20
scoreboard players set 0 NumberStorage 0
scoreboard players set 1 NumberStorage 1

#Scoreboards for the checkpoint system
scoreboard objectives add Checkpoint dummy
scoreboard objectives add RequiredCP dummy
scoreboard players set Count CheckpointNumber 0
scoreboard objectives add IsValid dummy
scoreboard objectives add CheckpointNumber dummy

# Custom Block Effects Toggle
scoreboard objectives add BlockToggle dummy
scoreboard players set SneakyHoney BlockToggle 0
scoreboard players set DeathLava BlockToggle 0
scoreboard players set JumpyLimeConcrete BlockToggle 0
scoreboard players set FloatingCalcite BlockToggle 0
scoreboard players set SpeedTerracotta BlockToggle 0
scoreboard players set SpeedyHoney BlockToggle 0
