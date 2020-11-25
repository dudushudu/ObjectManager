ObjectManagerAddon.Classes.ObjectManager = Class()

local ObjectManager = ObjectManagerAddon.Classes.ObjectManager

function ObjectManager:New()
    --[[
        GameObjectHasLockType(GUID, lb.EGameObjectTypes)
        ObjectHasDynamicFlag(GUID, lb.EUnitDynamicFlags),
        UnitHasFlag(GUID, lb.EUnitFlags),
        UnitHasFlag2(GUID, lb.EUnitFlags2),
        UnitHasMovementFlag(GUID, lb.EMovementFlags),
        UnitHasNpcFlag(GUID, lb.ENpcFlags)
    ]]--

    local function isLootable(GUID)
        return lb.ObjectHasDynamicFlag(GUID, lb.EUnitDynamicFlags.Lootable)
    end

    local function isGatherable(GUID)
        if lb.GameObjectHasLockType(GUID, lb.ELockTypes.Herbalism) then
            return true
        end

        return lb.GameObjectHasLockType(GUID, lb.ELockTypes.Mining)
    end

    self.Config = {
        Range = 100,
        Tables = {
            Units = {
                Flags = { lb.EObjectTypes.Unit },
            },
            Lootables = {
                Flags = { lb.EObjectTypes.Unit },
                Filter = isLootable
            },
            Gatherables = {
                Flags = { lb.EObjectTypes.GameObject },
                Filter = isGatherable
            }
        }
    }

    self:Update()
end


-- /dump lb.GetObjects(15, lb.EObjectTypes.GameObject)[1]

function ObjectManager:Update()
    local Object = ObjectManagerAddon.Classes.Object

    local function sortByDistance(objectA, objectB)
        return objectA.Distance < objectB.Distance
    end

    if self.LastUpdate and self.LastUpdate + 0.1 > GetTime() then
        return true
    end

    -- Initiate objects table if it doesn't exist
    local updatedObjects = {}
    if not self.Objects then
        self.Objects = {}
    end

    -- Loop through all specific tables
    for tableName, _table in pairs(self.Config.Tables) do
        local curUpdatedObjects = {}
        local objectsIndex = {}

        if not self[tableName] then
            self[tableName] = {}
        end

        -- Find current objects
        for _, GUID in ipairs(lb.GetObjects(self.Config.Range, unpack(_table.Flags))) do
            if not _table.Filter or _table.Filter(GUID) then
                -- Save for easier lookup
                updatedObjects[GUID] = true
                curUpdatedObjects[GUID] = true

                -- Add new object to objects table
                if not self.Objects[GUID] then
                    self.Objects[GUID] = Object({GUID = GUID})
                end

                -- Update object
                self.Objects[GUID]:Update()

                -- Add object to specific objects table
                self[tableName][GUID] = self.Objects[GUID]
            end
        end

        -- Remove old objects and add new objects to indexed table
        for GUID, object in pairs(self[tableName]) do
            if not curUpdatedObjects[GUID] then
                self[tableName][GUID] = nil
            else
                table.insert(objectsIndex, object)
            end
        end

        -- Sort indexed objects by distance
        table.sort(objectsIndex, sortByDistance)

        self[tableName .. "Index"] = objectsIndex
    end

    local objectsIndex = {}
    for GUID, object in pairs(self.Objects) do
        if not updatedObjects[GUID] then
            self.Objects[GUID] = nil
        else
            table.insert(objectsIndex, object)
        end
    end

    -- Sort indexed objects by distance
    table.sort(objectsIndex, sortByDistance)
    self.ObjectsIndex = objectsIndex

    self.LastUpdate = GetTime()
end

function ObjectManager:GetObjects(tableName, range)
    local objects = {}

    local table = {}
    if string.match(tableName, "Index") then
        table = self[tableName]
    elseif self[tableName .. "Index"] then
        table = self[tableName .. "Index"]
    end

    for _, object in table do
        if object.Distance > range then
            -- return because index table is sorted by distance so no more valid units past this point
            return objects
        end

        table.insert(objects, object)
    end

    return objects
end