data modify entity @s Fixed set value true
execute at @s as @e[type=minecraft:interaction,distance=..0.5,nbt={Tags:["itemframer:interaction"], attack:{}}] run data remove entity @s attack