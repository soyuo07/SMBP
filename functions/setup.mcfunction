gamerule sendcommandfeedback false
gamerule immediaterespawn true
tickingarea add ~-2 310 ~-2 ~2 320 ~2 tick
fill ~-2 310 ~-2 ~2 310 ~2 barrier
summon armor_stand "oper" ~ 311 ~
tag @e[type=armor_stand,name=oper] add oper
tp @s ~-1 311 ~-1
tellraw @s {"rawtext":[{"text":"§l§b해당 위치에 반복커맨드 (무조건, 항상사용) 으로 설정 후, 명령어에 function 으로 repeat 를 실행해주세요!"}]}
scoreboard objectives add DeathEvent dummy
scoreboard objectives add Life dummy
scoreboard players set @e[type=armor_stand,tag=oper] Life 0