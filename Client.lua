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
if message =="+" then LrDevelopController.increment ( "Exposure" ) end
if message =="-" then LrDevelopController.decrement ( "Exposure" ) end

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


