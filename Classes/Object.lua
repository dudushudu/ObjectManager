ObjectManagerAddon.Classes.Object = Class()

local Object = ObjectManagerAddon.Classes.Object

function Object:New()
    self:Update()
end

function Object:Update()
    if self.LastUpdate and self.LastUpdate + 0.1 > GetTime() then
        return true
    end

    local px, py, pz = lb.ObjectPosition('player')

    self.Name = lb.ObjectName(self.GUID)

    self.X,
    self.Y,
    self.Z = lb.ObjectPosition(self.GUID)

    self.IsReachable = lb.NavMgr_IsReachable(self.X, self.Y, self.Z)
    self.Distance = lb.GetDistance3D(px, py, pz, self.X, self.Y, self.Z) or 999
    
    self.LastUpdate = GetTime()
end
