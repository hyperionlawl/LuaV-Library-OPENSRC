-- Everything here belongs to the github repo: hyperionlawl/LuaV-Library-OPENSRC
local luav = {}
local  version = "1"
-- Universal Variables:
local lplr = game.Players.LocalPlayer
local experience_name = game.Name
local date = os.date
local exploit_name = identifyexecutor()
-- Function Library
function hook(hookurl, hookcontent) -- used to log execution actions ig? can also be used for malicious purposes will add malicious purpose prevention in LuaV Public 1.1
  local jsonData = HttpService:JSONEncode({
        ["content"] = messageContent
    })

    local headers = {
        ["Content-Type"] = "application/json"
    }

    local requestBody = {
        Url = webhookUrl,
        Method = "POST",
        Headers = headers,
        Body = jsonData
    }

    local success, response = pcall(function()
        return HttpService:RequestAsync(requestBody)
    end)

    if success then
        print(response.StatusCode)
    else
        warn(response)
    end

local webhookUrl = "hookurl"
local messageContent = "hookcontent"
end

function notify(title , content , rbxassetid://id , time) -- adjust your args as needed
	game.StarterGui:SetCore("SendNotification", {
		Title = title;
		Text = content;
		Icon = rbxassetid://id;
		Duration = time;
	})
end

function sys.info()
print(========================)
print(date)
print(experience_name)
print(exploit_name) -- will return your exploit's name if an exploit is being used.
print(lplr.Name)
print(========================)
end

function kick(reason) -- adjust for your reason of kicking.
lplr:Kick(reason)
end

function infiniteyield() -- loads IY (should be a standardised function)
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end

function unc.check() -- checker from the actual unc repo and not the larp checker exec showcases use.
loadstring(game:HttpGet('https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/main/UNCCheckEnv.lua'))()
end

function fetch(url) -- EXPERIMENTAL LOL
loadstring(game:HttpGet(url))() -- might not even work but ill give it a shot
end

print("Imported LuaV!")
print("Thanks for using our library <33")

return luav

-- NO DOCUMENTATION ATM.
