RegisterCommand('testidsrv', function (source)
    local name, sex, dob, charId
    if GetResourceState('es_extended') ~= 'missing' then
        local xPlayer = exports["es_extended"]:getSharedObject().GetPlayerFromId(source)
        name = xPlayer.name
        dob = xPlayer.variables.dateofbirth
        sex = xPlayer.variables.sex
        charId = 'ch'..string.sub(xPlayer.identifier,5,14)
    end
    
    local mugshot = lib.callback.await('pt:idcard:requestMugshot', source)

    if not mugshot then return end

    exports.ox_inventory:AddItem(source, 'idcard', 1, {
        description = 'Name: '..name..'\n\nDate of Birth: '..dob..'\n\nSex: '..sex,
        name = name,
        dob = dob,
        sex = sex,
        charID = charId,
        mugshot = mugshot
    })
end)

