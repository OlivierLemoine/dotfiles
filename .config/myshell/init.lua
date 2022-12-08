--local me = whoami().stdout
--local host = hostname().stdout
--print ("Welcome " .. me .. " !\n\n")
--
--config.ps1 = function ()
--    local dir = pwd().stdout
--    return me .. "@" .. host .. " " .. dir .. "\r\n❯ "
--end

function ls (...)
	local args = {...}
	table.insert(args, "-la")
	table.insert(args, "--group-directories-first")
	table.insert(args, "--header")
	table.insert(args, "--git")
	return exa (unpack(args))
end
