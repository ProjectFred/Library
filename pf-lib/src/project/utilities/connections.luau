local connections = {}
local connectionsFunction = {}

local services = require(script.Parent.Parent.Bundles.services)
local ContextActionService = services.ContextActionService

function connectionsFunction.add(connection)
    table.insert(connections, connection)
end
function connectionsFunction.deleteConnections()
    for i,v in connections do
        v:Disconnect()
        connections[i] = nil
    end
    ContextActionService:UnbindAllActions()
end

return connectionsFunction