tellraw @a [{"selector":"@s"},{"text":" [the function got called!] [statues:debug/called]"}]
execute on attacker run tellraw @a [{"text":"^ Attacker: "},{"selector":"@s"}]
execute on controller run tellraw @a [{"text":"^ Controller: "},{"selector":"@s"}]
execute on leasher run tellraw @a [{"text":"^ Leasher: "},{"selector":"@s"}]
execute on origin run tellraw @a [{"text":"^ Origin: "},{"selector":"@s"}]
execute on owner run tellraw @a [{"text":"^ Owner: "},{"selector":"@s"}]
execute on passengers run tellraw @a [{"text":"^ Passenger: "},{"selector":"@s"}]
execute on target run tellraw @a [{"text":"^ Target: "},{"selector":"@s"}]
execute on vehicle run tellraw @a [{"text":"^ Vehicle: "},{"selector":"@s"}]