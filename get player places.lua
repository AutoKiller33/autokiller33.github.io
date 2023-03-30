local tps=game:GetService("TeleportService")
local ms=game:GetService("MarketplaceService")
local gs=game:GetService("GroupService")
local creatorId=4061796
local url="https://games.roblox.com/v2/groups/4061796/games?accessFilter=4&limit=100&sortOrder=Asc"
local get=game:HttpGet(url:gsub("PLAYER_ID", tostring(creatorId)))
get=game.HttpService:JSONDecode(get).data

local s=""

for i,v in pairs(get) do
local add=v.name.."  -  "..v.rootPlace.id
s=s..add.."   |    "
end
writefile("places.txt", s)
print(s)