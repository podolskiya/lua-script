local remoteUser = "remote_user"
local remoteHost = "remote_host"
local remoteFilePath = "/path/to/remote/file"
local localDestination = "/path/to/local/destination"

local scpCommand = string.format("scp %s@%s:%s %s", remoteUser, remoteHost, remoteFilePath, localDestination)
local status, result = os.execute(scpCommand)

if status then
    print("File copied successfully!")
else
    print("Failed to copy the file.")
    print("Error:", result) -- Print any error messages, if available
end
