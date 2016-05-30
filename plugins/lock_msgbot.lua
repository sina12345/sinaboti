local function run(msg, matches)
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_msgbot'] then
                lock_msgbot = data[tostring(msg.to.id)]['settings']['lock_msgbot']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_msgbot == "yes" then
        delete_msg(msg.id, ok_cb, true)
    end
end
 
return {
  patterns = {
    "!id",
    "!help",
    "!info",
    "!settings",
    "!plugins",
    "!bots",
    "!banall (.*)",
    "!banall",
    "!setowner (.*)",
    "!setowner",
    "!add",
    "!rem",
    "!gpinfo",
    "!ban",
    "!ban (.*)",
    "!kick",
    "!kick (.*)",
    "/help",
    "#help",
    "id",
    "!setname (.*)",
    "!setphoto",
    "!(.*)",
    "/(.*)",
    "#(.*)",
  },
  run = run
}

