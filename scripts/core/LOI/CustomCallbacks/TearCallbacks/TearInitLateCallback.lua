--##POST_TEAR_INIT_LATE
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_TEAR_INIT_LATE,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_TYPE_VARIANT_SUBTYPE
)


---@param tear EntityTear
local function OnTearUpdate(_, tear)
    if tear.FrameCount ~= 0 then return end

    TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_TEAR_INIT_LATE, tear)
end
TSIL.__AddInternalCallback(
    "TEAR_INIT_LATE_CALLBACK_ON_TEAR_UPDATE",
    ModCallbacks.MC_POST_TEAR_UPDATE,
    OnTearUpdate
)