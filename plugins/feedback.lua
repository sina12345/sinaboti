do
 function run(msg, matches)
 
 local fuse = 'New FeedBack\n\nId : ' .. msg.from.id .. '\n\nName: ' .. msg.from.print_name ..'\n\nUsername: @' .. msg.from.username .. '\n\nThe Pm:\n' .. matches[1] 
 local fuses = '!printf user#id' .. msg.from.id
 
 
   local text = matches[1]
   local chat = "chat#id"..1057032673
   --like : local chat = "chat#id"..1057032673
   
  local sends = send_msg(chat, fuse, ok_cb, false)
  return 'پیام شما با موفقیت به تیم کیاوا ارسال شد'
 
 end
 end
 return {
  
  description = "Feedback",
 
  usage = "!feedback message",
  patterns = {
  "^[#!/][Ff]eedback (.*)$"
 
  },
  run = run
 }
