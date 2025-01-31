Config                = {}

-- priority list can be any identifier. (hex steamid, steamid32, ip) Integer = power over other people with priority
-- a lot of the steamid converting websites are broken rn and give you the wrong steamid. I use https://steamid.xyz/ with no problems.
-- you can also give priority through the API, read the examples/readme.
Config.Priority       = { -- Adding to here will allow people who are not running discord to join the server
  -- ["license:2eba5692e7ac4ffdad6fa0db340233edeedafd8c"] = 50 -- Sneaky Mario shhhhhh example?
}

Config.mainDiscord    = "421117746743476244"  -- Main Guild ID
Config.copDiscord     = "1087349123742715934" -- Cop Guild ID
Config.emsDiscord     = "1095661184272846949" -- Medic Guild ID

Config.DiscordPower   = {
  ["1118609853972230284"] = 0, --whitelisted (Main Discord)

  ["1087349123780448327"] = 1, -- Cop Role (Cop Discord)

  ["1095661184272846952"] = 1, -- Medic Role (Medic Discord)

  ["1118625892046995456"] = 2, -- Economy (Main Discord)

  ["1118626158867648553"] = 3, -- Premium (Main Discord)

  ["1118626512355205301"] = 4, -- Business (Main Discord)

  ["1118626693096161312"] = 5, -- FirstClass (Main Discord)

  ["1118626921736060942"] = 6, -- Private jet (Main Discord)

  ["1134031856875094097"] = 10 -- Fivem Management
}

-- require people to run steam
Config.RequireSteam   = false

-- "whitelist" only server
Config.PriorityOnly   = true

Config.discordRunning = true

-- disables hardcap, should keep this true
Config.DisableHardCap = true

-- will remove players from connecting if they don't load within: __ seconds; May need to increase this if you have a lot of downloads.
-- i have yet to find an easy way to determine whether they are still connecting and downloading content or are hanging in the loadscreen.
-- This may cause session provider errors if it is too low because the removed player may still be connecting, and will let the next person through...
-- even if the server is full. 10 minutes should be enough
Config.ConnectTimeOut = 600

-- will remove players from queue if the server doesn't recieve a message from them within: __ seconds
Config.QueueTimeOut   = 90

-- will give players temporary priority when they disconnect and when they start loading in
Config.EnableGrace    = true

-- how much priority power grace time will give
Config.GracePower     = 3

-- how long grace time lasts in seconds
Config.GraceTime      = 300

Config.AntiSpam       = false
Config.AntiSpamTimer  = 30
Config.PleaseWait     = "Please wait %d seconds. The connection will start automatically!"

-- on resource start, players can join the queue but will not let them join for __ milliseconds
-- this will let the queue settle and lets other resources finish initializing
Config.JoinDelay      = 30000

-- will show how many people have temporary priority in the connection message
Config.ShowTemp       = false

-- simple localization
Config.Language       = {
  joining = "\xF0\x9F\x8E\x89Joining...",
  connecting = "\xE2\x8F\xB3Connecting...",
  idrr = "\xE2\x9D\x97[Queue] Error: Couldn't retrieve any of your id's, try restarting.",
  err = "\xE2\x9D\x97[Queue] There was an error",
  pos = "\xF0\x9F\x90\x8CYou are %d/%d in queue \xF0\x9F\x95\x9C%s",
  connectingerr = "\xE2\x9D\x97[Queue] Error: Error adding you to connecting list",
  timedout = "\xE2\x9D\x97[Queue] Error: Timed out?",
  wlonly = "\xE2\x9D\x97[Queue] You must be whitelisted to join this server",
  steam = "\xE2\x9D\x97 [Queue] Error: Steam must be running"
}
