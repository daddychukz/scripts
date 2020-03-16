# similar to a cookbook default attributes but this takes higher precedence
# Holds runlist and default attributes of machines

name "webserver"
description "web server"
run_list "recipe[apache]"
default_attributes({
    "apache" => {
        "sites" => {
            "admin" => {
                "port" => 8000
            },
            "bears" => {
                "port" => 8081
            }
        }
    }
})