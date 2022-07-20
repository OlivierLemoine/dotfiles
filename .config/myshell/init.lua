local me = whoami().stdout
local host = hostname().stdout
print ("Welcome " .. me .. " !\n\n")

config.ps1 = function ()
    local dir = pwd().stdout
    return me .. "@" .. host .. " " .. dir .. "\r\n❯ "
end
