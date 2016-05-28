


local function run(msg)
    
    local data = load_data(_config.moderation.data)
    
     if data[tostring(msg.to.id)]['settings']['lock_media'] == 'yes' then
      
    
if not is_momod(msg) then
    
    
delete_msg(msg.id, ok_cb, true)
    local msgads = 'ForbiddenAdText'
   local receiver = msg.to.id
	
      end
   end
end
    
return {
patterns = {
"%[(photo)%]",
"%[(document)%]",
"%[(video)%]",
"%[(audio)%]",
"%[(unsupported)%]",
},
 run = run
}
