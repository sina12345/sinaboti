local function run(msg)
if msg.text == "سلام" then
	return "علیک☺ "
end
if msg.text == "خوبی" then
	return "خوبم تو خوبی؟😊"
end
if msg.text == "چه خبر" then
	return "سلامتی ☺"
end
end

return {
	description = "Chat With Robot Server", 
	usage = "chat with robot",
	patterns = {
    "^سلام",
	"^خوبی",
    "^چه خبر$",
		}, 
	run = run,
    --privileged = true,
	pre_process = pre_process
}

