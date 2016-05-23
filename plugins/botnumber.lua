do

function run(msg, matches)
send_contact(get_receiver(msg), "+19512290268", "Kiava", "BOT", ok_cb, false)
end

return {
patterns = {
"^!botnumber$"

},
run = run
}

end
-