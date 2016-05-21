do
function run(msg, matches)
  return "🔼کد گروه : "..msg.from.id.."\n🔼نام گروه : "..msg.to.title.."\n🔼 نام شما: "..(msg.from.first_name or '').."\nنام  : "..(msg.from.first_name or '').."\n🔼 نام خانوادگی : "..(msg.from.last_name or '').."\n🔼کد کاربری : "..msg.from.id.."\n🔼یوزرنیم : @"..(msg.from.username or '').."\n 🔹تلفن همراه : +"..(msg.from.phone or '')
end
return {
  description = "", 
  usage = "",
  patterns = {
    "^[!/#]myinfo$",
  },
  run = run
}
end