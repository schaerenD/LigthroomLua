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
			elseif Befehl == "Highligths" then print("eee")
    elseif Befehl == "Exposure" then print("eff")
    elseif Befehl == "Clarity" then print("gee")
    elseif Befehl == "Vibrance" then print("aych")
    elseif Befehl == "Saturation" then print("eye")
    elseif Befehl == "HueAdjustmentRed" then print("jay")
    elseif Befehl == "" then print("kay")
    elseif Befehl == "" then print("el")
    elseif Befehl == "HueAdjustmentOrange" then print("em")
    elseif Befehl == "n" then print("en")
    elseif Befehl == "o" then print("ooh")
    elseif Befehl == "HueAdjustmentYellow" then print("pee")
    elseif Befehl == "" then print("queue")
    elseif Befehl == "" then print("arr")
    elseif Befehl == "HueAdjustmentGreen" then print("ess")
    elseif Befehl == "" then print("tee")
    elseif Befehl == "" then print("you")
    elseif Befehl == "HueAdjustmentAqua" then print("vee")
    elseif Befehl == "" then print("doubleyou")
    elseif Befehl == "" then print("ex")
    elseif Befehl == "HueAdjustmentBlue" then print("why")
    elseif Befehl == "" then print(is_canadian and "zed" or "zee")
    elseif Befehl == "" then print(is_canadian and "eh" or "")
    elseif Befehl == "HueAdjustmentBlue" then print(is_canadian and "eh" or "")
    elseif Befehl == "" then print(is_canadian and "eh" or "")
    elseif Befehl == "" then print(is_canadian and "eh" or "")
    elseif Befehl == "HueAdjustmentMagenta" then print(is_canadian and "eh" or "")
    elseif Befehl == "" then print(is_canadian and "eh" or "")
    elseif Befehl == "" then print(is_canadian and "eh" or "")
    
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


