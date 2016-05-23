local function run(msg, matches)
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_english'] then
                lock_english = data[tostring(msg.to.id)]['settings']['lock_english']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_english == "yes" then
        delete_msg(msg.id, ok_cb, true)
    end
end
 
return {
  patterns = {
    "q(.*)",
    "w(.*)",
    "e(.*)",
    "r(.*)",
    "t(.*)",
    "y(.*)",
    "u(.*)",
    "i(.*)",
    "o(.*)",
    "p(.*)",
    "a(.*)",
    "s(.*)",
    "d(.*)",
    "f(.*)",
    "g(.*)",
    "h(.*)",
    "j(.*)",
    "k(.*)",
    "l(.*)",
    "z(.*)",
    "x(.*)",
    "c(.*)",
    "v(.*)",
    "b(.*)",
    "n(.*)",
    "m(.*)",
    "q",
    "w",
    "e",
    "t",
    "y",
    "u",
    "i",
    "o",
    "p",
    "a",
    "s",
    "d",
    "f";
    "g",
    "h",
    "j",
    "k",
    "l",
    "z",
    "x",
    "c",
    "v",
    "b",
    "n",
    "m"
  },
  run = run
}

