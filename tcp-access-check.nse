# In bash
# luarocks install luasocket

# Lua 
local socket = require("socket")

-- Function to check if a port can be infiltrated
function checkPortInfiltration(host, port)
    local client = socket.tcp()

    client:settimeout(5)

    local success, errMsg = client:connect(host, port)

    if success then
        client:close()
        return true, "Port is open and accessible"
    else
        client:close()
        return false, "Port is closed or inaccessible: " .. errMsg
    end
end

-- Usage example
local host = "127.0.0.1"  -- Replace this with the IP or domain you want to check
local port = 80  -- Replace this with the port number you want to check

local isAccessible, message = checkPortInfiltration(host, port)

if isAccessible then
    print(message)
else
    print(message)
end
