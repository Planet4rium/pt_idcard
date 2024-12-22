RegisterCommand('testid', function ()
    local mugshot = exports["MugshotBase64"]:GetMugshotBase64(true)
    print(mugshot)
    TriggerEvent("chat:addMessage", {
        template = "<img src='{0}'>",
        args = mugshot
})
end)


