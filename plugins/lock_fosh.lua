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
    "کس(.*)",
    "کس (.*)",
    "کون (.*)",
    "کون(.*)",
    "کیر(.*)",
    "کیر (.*)",
    "کون (.*)",
    "کیر (.*)",
    "کون (.*)",
    "سیکتیر (.*)",
    "ممه (.*)",
    "سکس (.*)",
    "سیکتیر (.*)",
    "قهبه (.*)",
    "دیوث",
    "دیوث (.*)",
    "اشغال (.*)",
    "اشغال (.*)",
    "بسیک (.*)",
    "بیناموس (.*)",
    "اوبی (.*)",
    "کونی (.*)",
    "بیشرف (.*)",
    "کس ننه(.*)",
    "ساک (.*)",
    "کیری (.*)",
    "خار کوسه (.*)",
    "ننه (.*)",
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
    "دیوث (.*)",
    "سیکتیر",
    "کس",
    "کون",
    "عوضی",
    "اشغال",
    "نفهم",
    "سکسی",
    "ممه",
    "kir",
    "kir (.*)",
    "Kir (.*)",
    "kos (.*)",
    "kon (.*)",
    "Kos (.*)",
    "Kon (.*)",
    "kir",
    "bk",
    "Bk",
    "BK",
    "bK",
    "bk (.*)",
    "Bk (.*)",
    "kos",
    "kon",
    "Kir",
    "Kos",
    "Kon",
    "اشغال",
    "اشغال (.*)",
    "عوضی (.*)",
    "کیر",
    "کیر (.*)",
    "کوس (.*)",
    "دیوث",
    "کی(.*)",
  },
  run = run
}
