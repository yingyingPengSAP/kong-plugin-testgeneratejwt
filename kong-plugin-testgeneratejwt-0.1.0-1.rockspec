local plugin_name = "testgeneratejwt"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "0.1.0"
local rockspec_revision = "1"
package = package_name
version = package_version .. "-" .. rockspec_revision

source = {
   url = "https://github.com/yingyingPengSAP/kong-plugin-testgeneratejwt.git"
}

build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional code files added to the plugin
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
  }
}
