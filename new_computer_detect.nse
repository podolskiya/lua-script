local nmap = require("nmap")


local nm = nmap.new()

nm:targets("192.168.1.0/24")
nm:set_script_args("default")
local scan_result = nm:scan()

for host, scan in pairs(scan_result) do
    print("Host:", host)
    for port, service in pairs(scan.ports) do
        print("\tPort:", port, "\tService:", service.service.name)
    end
end
