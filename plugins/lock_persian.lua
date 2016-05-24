local function run(msg, matches)
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_persian'] then
                lock_persian = data[tostring(msg.to.id)]['settings']['lock_persian']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_persan == "yes" then
        delete_msg(msg.id, ok_cb, true)
    end
end
 
return {
  patterns = {
    "ص(.*)",
    "ض(.*)",
    "ث(.*)",
    "ق(.*)",
    "ف(.*)",
    "ع(.*)",
    "غ(.*)",
    "ه(.*)",
    "خ(.*)",
    "ح(.*)",
    "ج(.*)",
    "چ(.*)",
    "ش(.*)",
    "س(.*)",
    "ی(.*)",
    "ئ(.*)",
    "ب(.*)",
    "ل(.*)",
    "ا(.*)",
    "ت(.*)",
    "ن(.*)",
    "م(.*)",
    "پ(.*)",
    "ط(.*)",
    "ز(.*)",
    "ر(.*)",
    "ژ(.*)",
    "ذ(.*)",
    "د(.*)",
    "و(.*)",
    "ک(.*)",
    "گ(.*)",
    "ء(.*)",
    "ص",
    "ض",
    "ث",
    "ق",
    "ف",
    "ع",
    "ه",
    "خ",
    "ح",
    "ج",
    "چ",
    "ش",
    "س";
    "ی",
    "ب",
    "ئ",
    "ل",
    "ا",
    "ت",
    "ن",
    "م",
    "پ",
    "ط",
    "ظ",
    "ژ"
    "ز",
    "ر",
    "د",
    "ذ",
    "و",
    "ک",
    "گ",
    "ء",
  },
  run = run
}

