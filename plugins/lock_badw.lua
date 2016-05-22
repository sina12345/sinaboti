local function run(msg)
    
    local data = load_data(_config.moderation.data)
    
     if data[tostring(msg.to.id)]['settings']['lock_badw'] == 'yes' then
      
    
if not is_momod(msg) then
    
    
chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
    local msgads = 'ForbiddenAdText'
   local receiver = msg.to.id
    send_large_msg("chat#id".. msg.to.id , "بدلیل فحش دادن شما از گروه اخراج میشوید")
	
      end
   end
end
    
return {patterns = {
    "کیر",
    "کیر (.*)",
    "کیر (.*)",
    "کس (.*)",
    "کس(.*)",
    "جنده (.*)",
    "کونی (.*)",
    "لاشی (.*)",
    "مادرتو (.*)",
    "گاییدم (.*)",
    "مادرسگ (.*)",
    "خارکصده (.*)",
	"[Kk]ir",
	"کص",
	"کس",
	"جنده",
	"لاشی",
	"کونی",
	"حرومزاده",
	"حرومی",
	"سگ",
	"مادر سگ",
	"[Kk]os",
	"[Jj]ende",
	"[Ll]ashi",
	"[Kk]ooni",
	"[Hh]aroom",
	"[Ff]uck",
	"[Ff]cker",
	"suck",
    "Kir (.*)",
    "Kon (.*)",
    "bk",
    "BK",
    "Bk",
    "bK",
    "Kos (.*)",
    "kos (.*)",
    "[Hh]aroom(.*)",
    "Jende (.*)",
    "jende (.*)",
    },
    run = run
    }
