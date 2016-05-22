
 do 

local function pre_process(msg) 
    --Checking mute 
    local hash = 'mate:'..msg.to.id 
    local ali = 'mate:'..msg.to.id 
    local oscar = 'mate:'..msg.to.id 
    local bot = 'mate:'..msg.to.id 
    local oscarteam = 'mate:'..msg.to.id 
    local oscarbot = 'mate:'..msg.to.id 
    if redis:get(hash) and not is_momod(msg) and msg.media  then 
            delete_msg(msg.id, ok_cb, true) 
            end 
    if redis:get(ali) and not is_momod(msg) and msg.media and msg.media.type == 'photo' then 
            delete_msg(msg.id, ok_cb, true) 
            end 
    if redis:get(oscar) and not is_momod(msg) and msg.media and msg.media.type == 'audio' then 
            delete_msg(msg.id, ok_cb, true) 
            end 
    if redis:get(bot) and not is_momod(msg) and msg.media and msg.media.type == 'video' then 
            delete_msg(msg.id, ok_cb, true) 
            end 

    if redis:get(oscarteam) and not is_momod(msg) and msg.media and msg.media.type == 'unsupported' then 
            delete_msg(msg.id, ok_cb, true) 
            end 

    if redis:get(oscarbot) and not is_momod(msg) and msg.media and msg.media.type == 'document' then 
            delete_msg(msg.id, ok_cb, true) 
        end 
        return msg  --By @iq_plus and @oscarbotv2 
    end 

local function oscar(msg, matches) 
    chat_id =  msg.to.id 
    if matches[1] == 'lock media' then 
                    local hash = 'mate:'..msg.to.id 
                    redis:set(hash, true) 
                    return "قفل موسیقی فعال شد و ممنوع شد" 

  elseif is_momod(msg) and matches[1] == 'unlock media' then 
      local hash = 'mate:'..msg.to.id 
      redis:del(hash) 
      return "قفل موسیقی غیرفعال شد" 

  elseif is_momod(msg) and matches[1] == 'lock photo' then 
      local ali = 'mate:'..msg.to.id 
      redis:set(ali, true) 
      return "قفل ارسال عکس فعال شد" 

  elseif is_momod(msg) and matches[1] == "unlock photo" then 
      local ali = 'mate:'..msg.to.id 
      redis:del(ali) 
      return "قفل ارسال عکس غیرفعال شد" 

  elseif is_momod(msg) and matches[1] == "lock audio" then 
      local oscar = 'mate:'..msg.to.id 
      redis:set(oscar, true) 
      return "قفل ارسال ویس فعال شد و ممنوع شد" 

  elseif is_momod(msg) and matches[1] == "unlock audio" then 
      local oscar = 'mate:'..msg.to.id 
      redis:del(oscar) 
      return "قفل ارسال ویس غیرفعال شد " 

  elseif is_momod(msg) and matches[1] == "lock video" then 
      local bot = 'mate:'..msg.to.id 
      redis:set(bot, true) 
      return "قفل ارسال ویدئو فعال شد و ممنوع شد" 

  elseif is_momod(msg) and matches[1] == "unlock video" then 
      local bot = 'mate:'..msg.to.id 
      redis:del(bot) 
      return "قفل ارسال ویدئو غیرفعال شد" 

  elseif is_momod(msg) and matches[1] == "lock sticker" then 
      local oscarteam = 'mate:'..msg.to.id 
      redis:set(oscarteam, true) 
      return "قفل ارسال استیکر فعال شد و ممنوع شد" 

      -- by @iq_plus 
  elseif is_momod(msg) and matches[1] == "unlock sticker" then 
      local oscarteam = 'mate:'..msg.to.id 
      redis:del(oscarteam) 
      return "قفل ارسال استیکر غیرفعال شد" 


  elseif is_momod(msg) and matches[1] == "lock file" then 
      local oscarbot = 'mate:'..msg.to.id 
      redis:set(oscarbot, true) 
      return "قفل ارسال فایل فعال شد و ممنوع شد" 


  elseif is_momod(msg) and matches[1] == "unlock file" then
      local oscarbot = 'mate:'..msg.to.id 
      redis:del(oscarbot) 
      return "قفل ارسال فایل غیرفعال شد" 

end 

end 

return { 
    patterns = { 
        '^[!/#](lock media)$', 
        '^[!/#](unlock media)$', 
        '^[!/#](lock photo)$', 
        '^[!/#](unlock photo)$', 
        '^[!/#](lock audio)$', 
        '^[!/#](unlock audio)$', 
        '^[!/#](lock video)$', 
        '^[!/#](unlock video)$', 
        '^[!/#](lock sticker)$', 
        '^[!/#](unlock sticker)$', 
        '^[!/#](lock file)$', 
        '^[!/#](unlock file)$' 
    }, 
    run = oscar, 
    pre_process = pre_process 
} 
end 
