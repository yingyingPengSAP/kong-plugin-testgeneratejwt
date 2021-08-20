local plugin_name = "testgeneratejwt"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "0.1.0"
local rockspec_revision = "1"

source = {
   url = "https://github.com/yingyingPengSAP/kong-plugin-testgeneratejwt.git"
}

dependencies = {
  "lua >= 5.3",
  "kong >= 0.14"
}


build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional code files added to the plugin
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
  }
}