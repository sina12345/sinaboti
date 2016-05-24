local function run(msg, matches)
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_emogi'] then
                lock_emogi = data[tostring(msg.to.id)]['settings']['lock_emogi']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_emogi == "yes" then
        delete_msg(msg.id, ok_cb, true)
    end
end
 
return {
  patterns = {
    "😄(.*)",
    "😃(.*)",
    "😂(.*)",
    "😁(.*)",
    "😀(.*)",
    "😊(.*)",
    "☺(.*)",
    "😐(.*)",
    "😯(.*)",
    "😉(.*)",
    "😈(.*)",
    "😇(.*)",
    "😆(.*)",
    "😆(.*)",
    "😅(.*)",
    "😴(.*)",
    "😢(.*)",
    "😡(.*)",
    "😬(.*)",
    "😠(.*)",
    "😕(.*)",
    "😑(.*)",
    "😨(.*)",
    "😧(.*)",
    "😦(.*)",
    "😥(.*)",
    "😤(.*)",
    "😣(.*)",
    "😮(.*)",
    "😵(.*)",
    "😳(.*)",
    "😲(.*)",
    "😱(.*)",
    "😟(.*)",
    "😰(.*)",
    "😩(.*)",
    "😜(.*)",
    "😛(.*)",
    "😍(.*)",
    "😒(.*)",
    "😞(.*)",
    "😷(.*)",
    "😶(.*)",
    "😎(.*)",
    "😚(.*)",
    "😘(.*)",
    "😙(.*)",
    "😗(.*)",
    "😋(.*)",
    "😝(.*)",
    "😓(.*)",
    "😏(.*)",
    "😪(.*)",
    "😔(.*)",
    "😖(.*)",
    "😌(.*)",
    "😭(.*)",
    "😫(.*)",
    "☺",
    "😐",
    "😊",
    "😢",
    "😑",
    "😍",
    "😎",
    "😭",
   
  },
  run = run
}
