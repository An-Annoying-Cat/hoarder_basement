---@diagnostic disable: duplicate-set-field

function TSIL.SaveManager.GetPersistentVariable(mod, variableName)
	local PersistentData = TSIL.__VERSION_PERSISTENT_DATA.PersistentData

	local tables = TSIL.Utils.Tables

	local modPersistentData = tables.FindFirst(PersistentData, function (_, modPersistentData)
		return modPersistentData.mod == mod.Name
	end)

	if modPersistentData == nil then
		return
	end

	local modVariables = modPersistentData.variables

	local foundVariable = tables.FindFirst(modVariables, function (_, modVariable)
		return modVariable.name == variableName
	end)

	if foundVariable == nil then
		return
	end

	return foundVariable.value
end
