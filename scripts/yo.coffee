# Descriptsion:
#   Yo is a simplest communication word!
#
#
# Commands:
#  

module.exports = (robot) -> 
  robot.hear /(yo|YO)$/i, (msg) ->
    msg.send "YO!"
