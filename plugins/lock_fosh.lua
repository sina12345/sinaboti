local function run(msg, matches)
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_fosh'] then
                lock_fosh = data[tostring(msg.to.id)]['settings']['lock_fosh']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_fosh == "yes" then
        delete_msg(msg.id, ok_cb, true)
    end
end
 
return {
  patterns = {
    "کس (.*)",
    "کون (.*)",
    "کیر (.*)",
    "ممه (.*)",
    "سکس (.*)",
    "سیکتیر (.*)",
    "قهبه (.*)",
    "بکیرم",
    "بکیرم (.*)",
    "بسیک (.*)",
    "بیناموس (.*)",
    "اوبی (.*)",
    "کونی (.*)",
    "بیشرف (.*)",
    "کس ننه (.*)",
    "ساک (.*)",
    "کیری (.*)",
    "خار کوسه (.*)",
    "ننه (.*)",
    "دیوث",
    "دیوث (.*)",
    "خواهرتو (.*)",
    "سکسی (.*)",
    "کسکش (.*)",
    "سیک تیر (.*)",
    "گاییدم (.*)",
    "میگام (.*)",
    "میگامت (.*)",
    "بسیک (.*)",
    "خواهرت (.*)",
    "خارتو (.*)",
    "کونت (.*)",
    "کوست (.*)",
    "شورت (.*)",
    "سگ (.*)",
    "کیری (.*)",
    "دزد (.*)",
    "ننت (.*)",
    "ابمو (.*)",
    "جق (.*)",
    "کیر",
    "کون",
    "کس",
    "ممه",
    "سکسی",
    "سکسی (.*)",
    "bk",
    "Bk",
    "Bk",
    "bk(.*)",
    "Bk(.*)",
    "Kon",
    "kon",
    "kos",
    "Kos",
    "Kir",
    "kir",
    "Kon(.*)",
    "kon(.*)",
    "Kos(.*)",
    "kos(.*)",
    "kir (.*)",
    "Kir(.*)",
    "Koni",
    "koni",
    "Koni (.*)",
    "koni(.*)",
   
  },
  run = run
}
