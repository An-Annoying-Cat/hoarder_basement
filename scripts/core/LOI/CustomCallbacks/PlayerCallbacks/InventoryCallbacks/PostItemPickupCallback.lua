--##use CustomCallbacks/PlayerCallbacks/InventoryCallbacks/ItemPickupCallbackLogic.lua
--##POST_ITEM_PICKUP

TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_ITEM_PICKUP,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.PLAYER_TYPE_VARIANT,
    TSIL.Enums.CallbackOptionalArgType.GENERIC,
    TSIL.Enums.CallbackOptionalArgType.GENERIC
)