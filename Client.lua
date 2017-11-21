local LrSocket = import "LrSocket"
local LrTasks = import "LrTasks"
local LrFunctionContext = import "LrFunctionContext"
local LrDialogs = import 'LrDialogs'

local LrDevelopController = import 'LrDevelopController'

LrTasks.startAsyncTask( function()
LrFunctionContext.callWithContext( 'socket_remote', function( context )
local running = true
local receiver = LrSocket.bind {
functionContext = context,
port = 4242,
plugin = _PLUGIN,
mode = "receive",
onConnecting = function( socket, port )
-- TODO
end,
onConnected = function( socket, port ) 
	LrDialogs.message( "Connection established", "4242", "info" )
end,
onMessage = function( socket, message )
-- Fakultaet(message)
			if     Befehl == "Contrast" then print("aah")
			elseif Befehl == "Shadows" then print("bee")
			elseif Befehl == "Blacks" then print("see")
			elseif Befehl == "Whites" then print("dee")
			elseif Befehl == "Hightigths" then print("eee")
    elseif Befehl == "f" then print("eff")
    elseif Befehl == "g" then print("gee")
    elseif Befehl == "h" then print("aych")
    elseif Befehl == "i" then print("eye")
    elseif Befehl == "j" then print("jay")
    elseif Befehl == "k" then print("kay")
    elseif Befehl == "l" then print("el")
    elseif Befehl == "m" then print("em")
    elseif Befehl == "n" then print("en")
    elseif Befehl == "o" then print("ooh")
    elseif Befehl == "p" then print("pee")
    elseif Befehl == "q" then print("queue")
    elseif Befehl == "r" then print("arr")
    elseif Befehl == "s" then print("ess")
    elseif Befehl == "t" then print("tee")
    elseif Befehl == "u" then print("you")
    elseif Befehl == "v" then print("vee")
    elseif Befehl == "w" then print("doubleyou")
    elseif Befehl == "x" then print("ex")
    elseif Befehl == "y" then print("why")
    elseif Befehl == "z" then print(is_canadian and "zed" or "zee")
    elseif Befehl == "?" then print(is_canadian and "eh" or "")
    else                 print("blah")
    end
end,
onClosed = function( socket )
running = false
end,
onError = function( socket, err )
if err == "timeout" then
socket:reconnect()
end
end,
}
while running do
LrTasks.sleep( 1/3 ) -- seconds
end
receiver:close()
end )
end )


