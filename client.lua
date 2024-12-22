RegisterCommand('testid', function ()
    local data = {
        name = 'Franklin De La Sanchez',
        dob = '01/04/1999',
        sex = 'M',
        document = 'Identification',
        charID = 'ch1:fabe14a4'
    }
    local isDL = ''
    local mugshot = exports['MugshotBase64']:GetMugshotBase64(true)
    print(mugshot)
    TriggerEvent('chat:addMessage', {
        template = "<div class='ptid_cont'><img class='ptid_bgr' src='pt_idcard/state.png'><div class='ptid_lr'><div class='ptid_image'><img style='height: 128px;' src='"..mugshot.."'></div><div class='ptid_code'>"..data.charID.."</div></div><div class='ptid_rr'><div class='ptid_header'>"..data.document.."</div><div class='ptid_tinytext'>NAME<span class='ptid_highlight'>"..data.name.."</span></div><hr><div class='ptid_tinytext'>DOB<span style='float: right;' class='ptid_highlight'>"..data.dob.."</span></div><hr><div class='ptid_tinytext'>SEX <span class='ptid_highlight "..isDL.."'>"..data.sex.."</span></div></div></div>",
        args = ''
})
end)


--<span class='ptid_tinytext2' style='float: right;'> LICENSE <span class='ptid_highlight'>A, B, C</span></span>

