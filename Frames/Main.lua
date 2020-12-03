ObjectManagerAddon.Frames.Main = CreateFrame("FRAME", "ObjectManagerAddon", UIParent)
ObjectManagerAddon.Frames.Main:SetScript("OnUpdate", function()
    local lb = lb

    if not lb then return end

    if not ObjectManagerAddon.ObjectManager then
        ObjectManagerAddon.ObjectManager = ObjectManagerAddon.Classes.ObjectManager()
    end

    ObjectManagerAddon.ObjectManager:Update()
end)
