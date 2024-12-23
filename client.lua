lib.callback.register('pt:idcard:requestMugshot', function()
    return exports['MugshotBase64']:GetMugshotBase64(true)
end)


--<span class='ptid_tinytext2' style='float: right;'> LICENSE <span class='ptid_highlight'>A, B, C</span></span>

exports('showCard', function(data, slot)
    local isDL = ''
    if slot.name == 'idcard' then
        TriggerEvent('chat:addMessage', {
            template = "<div class='ptid_cont'><img class='ptid_bgr' src='pt_idcard/state.png'><div class='ptid_lr'><div class='ptid_image'><img style='height: 128px;' src='"..slot.metadata.mugshot.."'></div><div class='ptid_code'>"..slot.metadata.charID.."</div></div><div class='ptid_rr'><div class='ptid_header'>"..data.label.."</div><div class='ptid_tinytext'>NAME<span class='ptid_highlight'>"..slot.metadata.name.."</span></div><hr><div class='ptid_tinytext'>DOB<span style='float: right;' class='ptid_highlight'>"..slot.metadata.dob.."</span></div><hr><div class='ptid_tinytext'>SEX <span class='ptid_highlight "..isDL.."'>"..slot.metadata.sex.."</span></div></div></div>",
            args = ''
        })
    end
end)