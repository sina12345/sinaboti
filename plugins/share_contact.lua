do

function run(msg, matches)
if is_sudo(msg) then
send_contact(get_receiver(msg), "+19512290268", "", "♨kIAvA™ ßøт♨️", ok_cb, false)
end
end

return {
patterns = {
"^[/!]([Ss]hare)$",
"^([Ss]hare)$",
"^[!/#]([Nn]umbe)$",

},
run = run
}

end
--By @SoLiD021
