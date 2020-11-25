LB = {
    DoGSub = function (value, filter) return value:gsub(filter) end,
    DoAtan2 = function (...) return math.atan2(...) end,
    DoMathRan = function (...) return math.random(...) end,
    GetShapeshiftForm = GetShapeshiftForm,
    -- Lua API
    _G = _G,
    bit = bit,
    cos = math.cos,
    debugstack = debugstack,
    error = error,
    geterrorhandler = geterrorhandler,
    getmetatable = getmetatable,
    ipairs = ipairs,
    loadstring = loadstring,
    math = math,
    next = next,
    pairs = pairs,
    pcall = pcall,
    -- print = function (...) return print(debugstack(print("|cffFFD800[|cff007ACCTypeBox|cffFFD800] |r", ...))) end,
    print = function (...) return print("|cffFFD800[|cff007ACCTypeBox|cffFFD800] |r", ...) end,
    rad = math.rad,
    require = require,
    rawget = rawget,
    rawset = rawset,
    select = select,
    setmetatable = setmetatable,
    sin = math.sin,
    string = string,
    table = table,
    tinsert = table.insert,
    tonumber = tonumber,
    tostring = tostring,
    tremove = table.remove,
    trim = string.trim,
    type = type,
    unpack = unpack,
    strsplit = strsplit,
    xpcall = xpcall,
    -- Flight Masters
    CloseTaxiMap = CloseTaxiMap,
    NumTaxiNodes = NumTaxiNodes,
    TaxiNodeCost = TaxiNodeCost,
    TakeTaxiNode = TakeTaxiNode,
    TaxiNodeGetType = TaxiNodeGetType,
    TaxiNodeName = TaxiNodeName,
    TaxiNodePosition = TaxiNodePosition,
    UnitOnTaxi = UnitOnTaxi,
    -- Wow API
    CameraOrSelectOrMoveStart = function (...) return lb.Unlock(CameraOrSelectOrMoveStart, ...) end,
    CameraOrSelectOrMoveStop = function (...) return lb.Unlock(CameraOrSelectOrMoveStop, ...) end,
    CancelShapeshiftForm = function (...) return lb.Unlock(CancelShapeshiftForm, ...) end,
    CastSpellByID = function (...) return lb.UnitTagHandler(lb.Unlock, CastSpellByID, ...) end,
    CastSpellByName = function (...) return lb.UnitTagHandler(lb.Unlock, CastSpellByName, ...)  end,
    CloseLoot = CloseLoot,
    CreateVector2D = CreateVector2D,
    GetAddOnMemoryUsage = GetAddOnMemoryUsage,
    GetInventoryItemDurability = GetInventoryItemDurability,
    GetNumGroupMembers = GetNumGroupMembers,
    GetNumLootItems = GetNumLootItems,
    GetNumSpellTabs = GetNumSpellTabs,
    GetSpellTabInfo = GetSpellTabInfo,
    GetSpellBookItemName = GetSpellBookItemName,
    GetSpellPowerCost = GetSpellPowerCost,
    IsInGroup = IsInGroup,
    IsInRaid = IsInRaid,
    LootSlot = LootSlot,
    GetProfessionInfos = GetProfessionInfos,
    GetLatestThreeSenders = GetLatestThreeSenders,
    GetInboxNumItems = GetInboxNumItems,
    GetProfessions = GetProfessions,
    LootSlotHasItem = LootSlotHasItem,
    PetAssistMode = function (...) return lb.Unlock(PetAssistMode, ...) end,
    PetPassiveMode = function (...) return lb.Unlock(PetPassiveMode, ...) end,
    RunMacroText = function (...) return  lb.Unlock(RunMacroText, ...); end,
    -- RunMacroText = function (...) print(debugstack(print("|cffFFD800[|cff007ACCTypeBox|cffFFD800] |r", ...))); return  lb.Unlock(RunMacroText, ...); end,
    SlashCmdList = SlashCmdList,
    SpellIsTargeting = function (...) return lb.UnitTagHandler(lb.Unlock, SpellIsTargeting, ...) end,
    SpellStopCasting = function (...) return lb.Unlock(SpellStopCasting, ...) end,
    SpellStopTargeting = function (...) return lb.Unlock(SpellStopTargeting, ...) end,
    TargetUnit = function (...) return ... and lb.UnitTagHandler(TargetUnit, ...) or false end,
    UnitInVehicle = UnitInVehicle,
    UnitIsAFK = UnitIsAFK,
    UnitName = function (...) return lb.Unlock(UnitName, ...) end,
    UpdateAddOnMemoryUsage = UpdateAddOnMemoryUsage,
    UseInventoryItem = function (...) return ... and lb.UnitTagHandler(lb.Unlock, UseInventoryItem, ...) or lb.Unlock(UseInventoryItem, ...) end,
    UseItemByName = function (...) return ... and lb.UnitTagHandler(lb.Unlock, UseItemByName, ...) or lb.Unlock(UseItemByName, ...) end,
    WorldMapFrame = WorldMapFrame,
    MailFrame = MailFrame,

    -- Units API
    CastingInfo = function (...) return lb.UnitTagHandler(CastingInfo) end,
    ChannelInfo = function (...) return lb.UnitTagHandler(ChannelInfo) end,
    FollowUnit = function (...) return lb.UnitTagHandler(FollowUnit, ...) end,
    GetRaidRosterInfo = function (...) return lb.UnitTagHandler(GetRaidRosterInfo, ...) end,
    GetRaidTargetIndex = function (...) return lb.UnitTagHandler(GetRaidTargetIndex, ...) end,
    GetUnitSpeed = function (...) return lb.UnitTagHandler(GetUnitSpeed, ...) end,
    UnitAffectingCombat = function (...) return lb.UnitTagHandler(UnitAffectingCombat, ...) end,
    UnitCanAttack = function (...) return lb.UnitTagHandler(UnitCanAttack, ...) end,
    UnitCastingInfo = function (...) return lb.UnitTagHandler(UnitCastingInfo, ...) end,
    UnitChannelInfo = function (...) return lb.UnitTagHandler(UnitChannelInfo, ...) end,
    UnitClass = function (...) return lb.UnitTagHandler(UnitClass, ...) end,
    UnitClassification = function (...) return lb.UnitTagHandler(UnitClassification, ...) end,
    UnitCreatureType = function (...) return lb.UnitTagHandler(UnitCreatureType, ...) end,
    UnitDetailedThreatSituation = function (...) return lb.UnitTagHandler(UnitDetailedThreatSituation, ...) or 0 end,
    UnitExists = function (...) return lb.UnitTagHandler(UnitExists, ...) end,
    UnitGetIncomingHeals = function (...) return lb.UnitTagHandler(UnitGetIncomingHeals, ...) or 0 end,
    UnitGetTotalHealAbsorbs = function (...) return lb.UnitTagHandler(UnitGetTotalHealAbsorbs, ...) or 0 end,
    UnitGroupRolesAssigned = function (...) return lb.UnitTagHandler(UnitGroupRolesAssigned, ...) end,
    UnitGUID = function (...) return lb.UnitTagHandler(UnitGUID, ...) end,
    UnitHasMovementFlag = function(...) return lb.UnitHasMovementFlag(...) end,
    UnitHealth = function (...) return lb.UnitTagHandler(UnitHealth, ...) or 100 end,
    UnitHealthMax = function (...) return lb.UnitTagHandler(UnitHealthMax, ...) or 100 end,
    UnitInRaid = function (...) return lb.UnitTagHandler(UnitInRaid, ...) end,
    UnitInPhase = function (...) return lb.UnitTagHandler(UnitInPhase, ...) end,
    UnitInParty = function (...) return lb.UnitTagHandler(UnitInParty, ...) end,
    UnitIsDead = function (...) return lb.UnitTagHandler(UnitIsDead, ...) end,
    UnitIsDeadOrGhost = function (...) return lb.UnitTagHandler(UnitIsDeadOrGhost, ...) end,
    UnitIsEnemy = function (...) return lb.UnitTagHandler(UnitIsEnemy, ...) end,
    UnitIsFriend = function (...) return lb.UnitTagHandler(UnitIsFriend, ...) end,
    UnitIsGhost = function (...) return lb.UnitTagHandler(UnitIsGhost, ...) end,
    UnitIsPlayer = function (...) return lb.UnitTagHandler(UnitIsPlayer, ...) end,
    UnitIsPVP = function (...) return lb.UnitTagHandler(UnitIsPVP, ...) end,
    UnitIsUnit = function (...) return lb.UnitTagHandler(UnitIsUnit, ...) end,
    UnitIsVisible = function (...) return lb.UnitTagHandler(UnitIsVisible, ...) end,
    UnitIsTapDenied = function (...) return lb.UnitTagHandler(UnitIsTapDenied, ...) end,
    UnitLevel = function (...) return lb.UnitTagHandler(UnitLevel, ...) or 120 end,
    UnitPower = function (...) return lb.UnitTagHandler(UnitPower, ...) or 100 end,
    UnitPowerMax = function (...) return lb.UnitTagHandler(UnitPowerMax, ...) or 100 end,
    UnitPowerType = function (...) return lb.UnitTagHandler(UnitPowerType, ...) end,
    UnitName = function (...) return lb.UnitTagHandler(UnitName, ...) end,
    UnitPlayerOrPetInParty = function (...) return lb.UnitTagHandler(UnitPlayerOrPetInParty , ...) end,
    UnitPlayerOrPetInRaid = function (...) return lb.UnitTagHandler(UnitPlayerOrPetInRaid , ...) end,
    UnitSetRole = function (...) return lb.UnitTagHandler(UnitSetRole , ...) end,
    UnitThreatSituation = function (...) return lb.UnitTagHandler(UnitThreatSituation, ...) or 0 end,
    UnitTarget = function (...) return lb.UnitTagHandler(lb.UnitTarget, ...) end,
    FocusUnit = function(...) return lb.UnitTagHandler(lb.Unlock, FocusUnit, ...) end,

    -- Buffs API
    UnitBuff = function (...) return lb.UnitTagHandler(UnitBuff, ...) end,
    UnitDebuff = function (...) return lb.UnitTagHandler(UnitDebuff, ...) end,
    UnitAura = function (...) return lb.UnitTagHandler(UnitAura, ...) end,
    FindAuraByName = function (...) return lb.UnitTagHandler(AuraUtil.FindAuraByName, ...) end,

    -- Player API
    GetHaste = GetHaste,
    GetInstanceInfo = GetInstanceInfo,
    GetPVPDesired = GetPVPDesired,
    GetSpecialization = GetSpecialization,
    GetSpecializationInfo = GetSpecializationInfo,
    GetUnitMaxHealthModifier = GetUnitMaxHealthModifier,
    HasFullControl = HasFullControl,
    IsAutoRepeatSpell = IsAutoRepeatSpell,
    IsCurrentSpell = IsCurrentSpell,
    IsFalling = IsFalling,
    IsFlying = IsFlying,
    IsInInstance = IsInInstance,
    IsMounted = IsMounted,
    IsPetActive = IsPetActive,
    UnitAttackSpeed = UnitAttackSpeed,
    UnitInBattleground = UnitInBattleground,
    UnitIsWarModeDesired = UnitIsWarModeDesired,
    UnitOnTaxi = UnitOnTaxi,

    -- PlayerPet API
    DisableSpellAutocast = DisableSpellAutocast,
    EnableSpellAutocast = EnableSpellAutocast,
    GetPetActionInfo = GetPetActionInfo,
    IsPetAttackActive = IsPetAttackActive,
    PetAttack = function (...) return lb.UnitTagHandler(PetAttack, ...) end,
    -- Power API
    GetPowerRegen = GetPowerRegen,
    GetRuneCooldown = GetRuneCooldown,
    UnitPower = UnitPower,
    UnitPowerMax = UnitPowerMax,
    UnitStagger = UnitStagger,

    -- Spells API
    GetSpellBaseCooldown = GetSpellBaseCooldown,
    GetSpellBonusDamage = GetSpellBonusDamage,
    GetSpellCharges = GetSpellCharges,
    GetSpellCooldown = GetSpellCooldown,
    GetSpellCount = GetSpellCount,
    GetSpellDescription = GetSpellDescription,
    GetSpellInfo = GetSpellInfo,
    GetSpellLink = GetSpellLink,
    GetSpellLossOfControlCooldown = GetSpellLossOfControlCooldown,
    GetTotemInfo = GetTotemInfo,
    GetTotemTimeLeft = GetTotemTimeLeft,
    IsUsableSpell = IsUsableSpell,
    IsHarmfulSpell = IsHarmfulSpell,
    IsHelpfulSpell = IsHelpfulSpell,
    IsPlayerSpell = IsPlayerSpell,
    IsSpellInRange = function (...) return lb.UnitTagHandler(IsSpellInRange, ...) end,
    IsSpellKnown = IsSpellKnown,
    -- Stats API
    CR_VERSATILITY_DAMAGE_DONE = CR_VERSATILITY_DAMAGE_DONE,
    GetCombatRating = GetCombatRating,
    GetCombatRatingBonus = GetCombatRatingBonus,
    GetCorruption = GetCorruption,
    GetCorruptionResistance = GetCorruptionResistance,
    GetVersatilityBonus = GetVersatilityBonus,
    GetMasteryEffect = GetMasteryEffect,
    GetCritChance = GetCritChance,
    GetHaste = GetHaste,
    UnitAttackPower = UnitAttackPower,
    UnitDamage = UnitDamage,
    UnitSpellHaste = UnitSpellHaste,
    -- Keybinds
    AscendStop = function () return lb.Unlock(AscendStop) end,
    JumpOrAscendStart = function () return lb.Unlock(JumpOrAscendStart) end,
    JumpOrAscendStop = function () return lb.Unlock(JumpOrAscendStop) end,
    MoveBackwardStart = function () return lb.Unlock(MoveBackwardStart) end,
    MoveBackwardStop = function () return lb.Unlock(MoveBackwardStop) end,
    MoveForwardStart = function () return lb.Unlock(MoveForwardStart) end,
    MoveForwardStop = function () return lb.Unlock(MoveForwardStop) end,
    StrafeLeftStart = function () return lb.Unlock(StrafeLeftStart) end,
    StrafeLeftStop = function () return lb.Unlock(StrafeLeftStop) end,
    StrafeRightStart = function () return lb.Unlock(StrafeRightStart) end,
    StrafeRightStop = function () return lb.Unlock(StrafeRightStop) end,
    TurnLeftStart = function () return lb.Unlock(TurnLeftStart) end,
    TurnLeftStop = function () return lb.Unlock(TurnLeftStop) end,
    TurnRightStart = function () return lb.Unlock(TurnRightStart) end,
    TurnRightStop = function () return lb.Unlock(TurnRightStop) end,
    PitchUpStart = function () return lb.Unlock(PitchUpStart) end,
    PitchDownStart = function () return lb.Unlock(PitchDownStart) end,
    PitchDownStop = function () return lb.Unlock(PitchDownStop) end,
    PitchUpStop = function () return lb.Unlock(PitchUpStop) end,
    IsMouselooking = IsMouselooking,
    IsShiftKeyDown = IsShiftKeyDown,
    IsSwimming = IsSwimming,
    IsControlKeyDown = IsControlKeyDown,
    MouselookStart = MouselookStart,
    -- General API
    ClearTarget = function () return lb.Unlock(ClearTarget) end,
    CombatLogGetCurrentEventInfo = CombatLogGetCurrentEventInfo,
    C_LossOfControl = C_LossOfControl,
    C_AzeriteEmpoweredItem = C_AzeriteEmpoweredItem,
    C_ChatInfo = C_ChatInfo,
    C_ChallengeMode = C_ChallengeMode,
    C_Map = C_Map,
    C_MountJournal = C_MountJournal,
    C_Timer = C_Timer,
    C_Item = C_Item,
    Enum = Enum,
    SetRaidTarget = function (...) lb.UnitTagHandler(SetRaidTarget, ...) end,
    GetRaidTargetIndex = function (...) lb.UnitTagHandler(GetRaidTargetIndex, ...) end,

    Dismount = Dismount,
    ItemLocation = ItemLocation,
    GetAddOnMetadata = GetAddOnMetadata,
    GetBuildInfo = GetBuildInfo,
    GetCursorPosition = GetCursorPosition,
    GetGossipOptions = GetGossipOptions,
    GetNumGossipOptions = GetNumGossipOptions,
    GetSkillLevel = GetSkillLevel,
    GetSkillLineInfo = GetSkillLineInfo,
    GetNumSkillLines = GetNumSkillLines,
    SelectGossipOption = function (...) lb.Unlock(SelectGossipOption, ...) end,
    GetNumQuestLogEntries = GetNumQuestLogEntries,
    GetQuestLogQuestText = GetQuestLogQuestText,
    GetQuestIDFromLogIndex = GetQuestIDFromLogIndex ~= nil and GetQuestIDFromLogIndex or function () return 69 end,
    GetLocale = GetLocale,
    GetTime = GetTime,
    GetNetStats = GetNetStats,
    GetInventorySlotInfo = GetInventorySlotInfo,
    GetWeaponEnchantInfo = GetWeaponEnchantInfo,
    InterfaceOptions_AddCategory = InterfaceOptions_AddCategory,
    IsIndoors = IsIndoors,
    IsOutdoors = IsOutdoors,
    PowerType = Enum.PowerType,
    UnitIsWildBattlePet = function (...) return lb.UnitTagHandler(UnitIsWildBattlePet, ...) end,
    AcceptProposal = function (...) return lb.Unlock(AcceptProposal, ...) end,
    GetCVar = GetCVar,
    SetCVar = SetCVar,
    UIErrorsFrame = UIErrorsFrame,
    mod = mod,
    CanLootUnit = CanLootUnit,
    ResetInstances = ResetInstances,
    SendChatMessage = SendChatMessage,
    -- Equipment API
    ContainerIDToInventoryID = ContainerIDToInventoryID,
    EquipCursorItem = function (...) return lb.Unlock(EquipCursorItem, ...) end,
    EquipItemByName = EquipItemByName,
    EquipPendingItem = function (...) return lb.Unlock(EquipPendingItem, ...) end,
    ConfirmBindOnUse = function () return lb.Unlock(ConfirmBindOnUse) end,
    GetContainerItemInfo = GetContainerItemInfo,
    GetContainerItemLink = GetContainerItemLink,
    GetContainerFreeSlots = GetContainerFreeSlots,
    GetContainerNumFreeSlots = GetContainerNumFreeSlots,
    GetContainerNumSlots = GetContainerNumSlots,
    GetInventoryItemCooldown = GetInventoryItemCooldown,
    GetInventoryItemID = GetInventoryItemID,
    GetItemCooldown = GetItemCooldown,
    GetItemCount = GetItemCount,
    GetItemInfo = GetItemInfo,
    GetItemGem = GetItemGem,
    IsUsableInventory = IsUsableInventory,
    NUM_BAG_SLOTS = NUM_BAG_SLOTS,
    PickupContainerItem = PickupContainerItem,
    PickupInventoryItem = PickupInventoryItem,
    PickupMerchantItem = PickupMerchantItem,
    PutItemInBackpack = PutItemInBackpack,
    PutItemInBag = PutItemInBag,
    UseContainerItem = UseContainerItem,
    -- Talents API
    LearnTalent = LearnTalent,
    RemoveTalent = RemoveTalent,
    GetTalentInfo = GetTalentInfo,
    RAID_CLASS_COLORS = RAID_CLASS_COLORS,
    ITEM_QUALITY_COLORS = ITEM_QUALITY_COLORS,
    -- Pet Battles / Critters
    BATTLE_PET_NAME_5 = BATTLE_PET_NAME_5,
    PETTAME_NOTDEAD = PETTAME_NOTDEAD,
    SPELL_FAILED_NO_PET = SPELL_FAILED_NO_PET,
    ERR_ATTACK_DEAD = ERR_ATTACK_DEAD,
    PETTAME_DEAD = PETTAME_DEAD,
    -- Constants
    SPELL_FAILED_NOT_BEHIND = SPELL_FAILED_NOT_BEHIND,
    SPELL_FAILED_NO_MOUNTS_ALLOWED = SPELL_FAILED_NO_MOUNTS_ALLOWED,
    MINIMAP_TRACKING_MAILBOX = MINIMAP_TRACKING_MAILBOX,
    -- WoW UI API
    CreateFrame = CreateFrame,
    GameTooltip = GameTooltip,
    CreateMacro = CreateMacro,
    ForceQuit = function() return lb.Unlock(ForceQuit) end,
    message = message,
    UIParent = UIParent,
    Enum = Enum,
    WorldFrame = WorldFrame,
    Reload = function() return lb.Unlock(C_UI.Reload) end,
    -- LuaBox API
    UnlockedInteract = function (...) return lb.Unlock(lb.ObjectInteract, ...) end,
    WorldToScreen = function (wX, wY, wZ)
        local ResolutionCoef = WorldFrame:GetWidth() / lb.GetWindowSize()
        local sX, sY = lb.WorldToScreen(wX, wY, wZ)
        if sX and sY then
            return sX * ResolutionCoef, -sY * ResolutionCoef
        else
            return sX, sY
        end
    end
}
