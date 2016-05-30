local function run(msg, matches)
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_userbot'] then
                lock_userbot = data[tostring(msg.to.id)]['settings']['lock_userbot']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_userbot == "yes" then
        delete_msg(msg.id, ok_cb, true)
    end
end
 
return {
  patterns = {
    "بات (.*)",
    "ربات (.*)",
    "روبوت (.*)",
    "روبات (.*) ",
    "ربوت (.*)",
    "bot (.*)",
    "Bot (.*)",
    "bOt (.*)",
    "BOt (.*)",
    "BOT (.*)",
    "ربات",
    "بات",
    "روبوت",
    "روبات",
    "BOT",
    "bot",
    "Bot",
    "BOt",
    "bOt",
    "@bot",
    "@(.*)bot",
    "@(.*)Bot",
    "(.*)@(.*)bot",
    "(.*)@(.*)Bot",
    "(.*) @(.*)bot",
    "(.*) @(.*)Bot",
  },
  run = run
}

