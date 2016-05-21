do

function run(msg, matches)     -- Bot number     -- first name        -- last name
send_contact(get_receiver(msg), "+19512290268", "♨kIAvA™ ßøт♨️", "@KiavaBots", ok_cb, false)
end

return {
patterns = {
"^!share$",
"^share$",
"^Share$",
"^/share$",
"^/number$",
"^!number$",
"^!share$",
"^!number$",
"^Number$",
"^number$",
"^phone$",
"^!phone$",
"^Phone$",
"^/phone$",

},
run = run
}

end
