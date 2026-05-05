--[[
    4x9 Hub | Official Loader
--]]

local url = "https://raw.githubusercontent.com/alicannyalbir5-rgb/4x9-hub/main/loader.lua"

print("-------------------------------")
print("   4x9 HUB : INITIALIZING...   ")
print("-------------------------------")

local success, result = pcall(function()
    return game:HttpGet(url, true) -- Le 'true' force la récupération sans cache
end)

if success then
    local func, err = loadstring(result)
    if func then
        task.spawn(func) -- Utiliser task.spawn évite de bloquer les autres threads
        print("Successfully loaded 4x9 Hub!")
    else
        warn("Critical Error: Failed to compile script.")
        print(err)
    end
else
    warn("Network Error: Could not connect to GitHub.")
    print(result)
end
