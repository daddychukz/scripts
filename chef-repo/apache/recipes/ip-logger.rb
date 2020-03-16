search("node","platform:ubuntu*").each do |server|
    log "The Ubuntu servers in your organization have the following FQDN/IP Addresses:- #{server["fqdn"]}/#{server["ipaddress"]}"
end
    
#knife search node "pci_in_scope*true" -a pci