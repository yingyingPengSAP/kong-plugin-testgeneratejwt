
local BasePlugin = require "kong.plugins.base_plugin"


local generateJWT = BasePlugin:extend()

generateJWT.VERSION  = "1.0.0"
generateJWT.PRIORITY = 10


function generateJWT:body_filter(conf)
  local res_body_string=tostring(kong.service.response.get_raw_body())
  kong.log.err("getting response body")
  kong.log.err(res_body_string)
  kong.log.err("------------------")
end 


return generateJWT
