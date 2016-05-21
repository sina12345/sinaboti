do

function run(msg, matches)
  return 'kiavaprotection v4'.. VERSION .. [[ 
 
  Developer : @kiavair & @Mohammad_NBG
  
  Channel : @kiavaprotection
  
  @kiava_ir_bot

  
  All rights reserved.
  __________________]]
end

return {
  description = "Shows bot version", 
  usage = "!version: Shows bot version",
  patterns = {
    "^!version$"
  }, 
  run = run 
}

end
