local cosm = require("lang.lua.cosm")

--Once you have added 'DepA' to your dependencies in your 'Project.lua' file you can add a dependency as follows:
--local A = cosm.require("DepA")

local C = terralib.includecstring [[
   #include <stdio.h>
]]

local TerraUnit = {}

terra TerraUnit.hello()
    C.printf("Hello world!. Greetings from TerraUnit.\n")
end

return TerraUnit
