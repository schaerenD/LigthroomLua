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
	if     Befehl == "Contrast+" then LrDevelopController.increment("Contrast",WERT)        
	elseif Befehl == "Shadows+" then LrDevelopController.increment("Shadows",WERT)        
	elseif Befehl == "Blacks+" then LrDevelopController.increment("Blacks",WERT)        
	elseif Befehl == "Whites+" then LrDevelopController.increment("Whites",WERT)        
	elseif Befehl == "Highligths+" then LrDevelopController.increment("Highlights",WERT)        
    elseif Befehl == "Exposure+" then LrDevelopController.increment("Exposure",WERT)        
    elseif Befehl == "Clarity+" then LrDevelopController.increment("Clarity",WERT)        
    elseif Befehl == "Vibrance+" then LrDevelopController.increment("Vibrance",WERT)        
    elseif Befehl == "Saturation+" then LrDevelopController.increment("Saturation",WERT)        
    elseif Befehl == "HueRed+" then LrDevelopController.increment("HueRed",WERT)        
    elseif Befehl == "SatRed+" then LrDevelopController.increment("SatRed",WERT)        
    elseif Befehl == "LumRed+" then LrDevelopController.increment("LumRed",WERT)        
    elseif Befehl == "HueOrange+" then LrDevelopController.increment("HueOrange",WERT)        
    elseif Befehl == "SatOrange+" then LrDevelopController.increment("SatOrange",WERT)        
    elseif Befehl == "LumOrange+" then LrDevelopController.increment("LumOrange",WERT)        
    elseif Befehl == "HueYellow+" then LrDevelopController.increment("HueYellow",WERT)        
    elseif Befehl == "SatYellow+" then LrDevelopController.increment("SatYellow",WERT)
    elseif Befehl == "LumYellow+" then LrDevelopController.increment("LumYellow",WERT)
    elseif Befehl == "HueGreen+" then LrDevelopController.increment("HueGreen",WERT)
    elseif Befehl == "SatGreen+" then LrDevelopController.increment("SatGreen",WERT)
    elseif Befehl == "LumGreen+" then LrDevelopController.increment("LumGreen",WERT)
    elseif Befehl == "HueAqua+" then LrDevelopController.increment("HueAqua",WERT)
    elseif Befehl == "SatAqua+" then LrDevelopController.increment("SatAqua",WERT)
    elseif Befehl == "LumAqua+" then LrDevelopController.increment("LumAqua",WERT)
    elseif Befehl == "HueBlue+" then LrDevelopController.increment("HueBlue",WERT)
    elseif Befehl == "SatBlue+" then LrDevelopController.increment("SatBlue",WERT)
    elseif Befehl == "LumBlue+" then LrDevelopController.increment("LumBlue",WERT)
    elseif Befehl == "HuePurple+" then LrDevelopController.increment("HuePurple",WERT)
    elseif Befehl == "SatPurple+" then LrDevelopController.increment("SatPurple",WERT)        
    elseif Befehl == "LumPurple+" then LrDevelopController.increment("LumPurple",WERT)
    elseif Befehl == "HueMagenta+" then LrDevelopController.increment("HueMagenta",WERT)
    elseif Befehl == "SatMagenta+" then LrDevelopController.increment("SatMagenta",WERT)
    elseif Befehl == "LumMagenta+" then LrDevelopController.increment("LumMagenta",WERT)
    
    elseif Befehl == "Contrast-" then LrDevelopController.decrement("Contrast",WERT)        
    elseif Befehl == "Shadows-" then LrDevelopController.decrement("Shadows",WERT)        
    elseif Befehl == "Blacks-" then LrDevelopController.decrement("Blacks",WERT)        
    elseif Befehl == "Whites-" then LrDevelopController.decrement("Whites",WERT)        
    elseif Befehl == "Highligths-" then LrDevelopController.decrement("Highlights",WERT)        
    elseif Befehl == "Exposure-" then LrDevelopController.decrement("Exposure",WERT)        
    elseif Befehl == "Clarity-" then LrDevelopController.decrement("Clarity",WERT)        
    elseif Befehl == "Vibrance-" then LrDevelopController.decrement("Vibrance",WERT)        
    elseif Befehl == "Saturation-" then LrDevelopController.decrement("Saturation",WERT)        
    elseif Befehl == "HueRed-" then LrDevelopController.decrement("HueRed",WERT)        
    elseif Befehl == "SatRed-" then LrDevelopController.decrement("SatRed",WERT)        
    elseif Befehl == "LumRed-" then LrDevelopController.decrement("LumRed",WERT)        
    elseif Befehl == "HueOrange-" then LrDevelopController.decrement("HueOrange",WERT)        
    elseif Befehl == "SatOrange-" then LrDevelopController.decrement("SatOrange",WERT)        
    elseif Befehl == "LumOrange-" then LrDevelopController.decrement("LumOrange",WERT)        
    elseif Befehl == "HueYellow-" then LrDevelopController.decrement("HueYellow",WERT)        
    elseif Befehl == "SatYellow-" then LrDevelopController.decrement("SatYellow",WERT)
    elseif Befehl == "LumYellow-" then LrDevelopController.decrement("LumYellow",WERT)
    elseif Befehl == "HueGreen-" then LrDevelopController.decrement("HueGreen",WERT)
    elseif Befehl == "SatGreen-" then LrDevelopController.decrement("SatGreen",WERT)
    elseif Befehl == "LumGreen-" then LrDevelopController.decrement("LumGreen",WERT)
    elseif Befehl == "HueAqua-" then LrDevelopController.decrement("HueAqua",WERT)
    elseif Befehl == "SatAqua-" then LrDevelopController.decrement("SatAqua",WERT)
    elseif Befehl == "LumAqua-" then LrDevelopController.decrement("LumAqua",WERT)
    elseif Befehl == "HueBlue-" then LrDevelopController.decrement("HueBlue",WERT)
    elseif Befehl == "SatBlue-" then LrDevelopController.decrement("SatBlue",WERT)
    elseif Befehl == "LumBlue-" then LrDevelopController.decrement("LumBlue",WERT)
    elseif Befehl == "HuePurple-" then LrDevelopController.decrement("HuePurple",WERT)
    elseif Befehl == "SatPurple-" then LrDevelopController.decrement("SatPurple",WERT)        
    elseif Befehl == "LumPurple-" then LrDevelopController.decrement("LumPurple",WERT)
    elseif Befehl == "HueMagenta-" then LrDevelopController.decrement("HueMagenta",WERT)
    elseif Befehl == "SatMagenta-" then LrDevelopController.decrement("SatMagenta",WERT)
    elseif Befehl == "LumMagenta-" then LrDevelopController.decrement("LumMagenta",WERT)
    else    print("Kein Befehl erkannt")
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


