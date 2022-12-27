--commands. accesses the LuaCommandProcessor
 
--[[tableIn passes a tabel containing
    name = the command name, 
    tick = the tick command was sent, 
    player_index = the player who used the command, 
    parameter = parameter passed after the command
    --]]
function GlobalGreeting(tableIn)
    local player = game.get_player(tableIn.player_index)

    local color = {r=1, g=0, b=0, a=1}

    --ONLY visible by command caller
    player.print("HI only you see this :)!" ..player.name, color)

    game.print("Hello everyone")

    player.insert({name = "wood", count = 10})


end

--registers custom event /say_hello
commands.add_command("say_hello", "this command says hello", GlobalGreeting)