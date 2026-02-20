local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local GameList = {
    [8836568224] = "https://raw.githubusercontent.com/xapongg/XapVerseHub/refs/heads/main/Games/KayakAndSurf.lua",

}

local PlaceList = {
    [79657240466394] = "https://raw.githubusercontent.com/xapongg/XapVerseHub/refs/heads/main/Games/ContainerRNG.lua",
    [82013336390273] = "https://raw.githubusercontent.com/xapongg/XapVerseHub/refs/heads/main/Games/PickaxeSim.lua",
    [76285745979410] = "https://raw.githubusercontent.com/xapongg/XapVerseHub/refs/heads/main/Games/AnimeCardCollection.lua",
    [121757491357999] = "https://raw.githubusercontent.com/xapongg/XapVerseHub/refs/heads/main/Games/FeedAndFarm.lua",
}

local scriptURL =
    GameList[game.GameId]
    or PlaceList[game.PlaceId]

if scriptURL then
    loadstring(game:HttpGet(scriptURL))()
else
    warn("[XapVerseHub] Game/Place belum terdaftar")
    LocalPlayer:Kick(
        "XapVerseHub ❌\n" ..
        "Game ini belum ada di list.\n" ..
        "Cek Discord untuk update terbaru.."
    )
end
