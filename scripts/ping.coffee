# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   hubot ping - Reply with pong
#   hubot echo <text> - Reply back with <text>
#   hubot time - Reply with current time
#   hubot die - End hubot process

module.exports = (robot) ->
  robot.respond /PING$/i, (msg) ->
    msg.send "PONG"

  robot.respond /ADAPTER$/i, (msg) ->
    msg.send robot.adapterName

  robot.respond /ECHO (.*)$/i, (msg) ->
    msg.send msg.match[1]

  robot.respond /TIME$/i, (msg) ->
    msg.send "Server time is: #{new Date()}"

#  robot.respond /DIE$/i, (msg) ->
#    msg.send "Goodbye, cruel world."
#    process.exit 0

  robot.hear /ぬるぽ/, (msg) ->
    msg.send "ガッ"

  robot.respond /たけ/, (msg) ->
    msg.send "クラブ大好き"

  robot.hear /よっさん/, (msg) ->
    msg.send "クラブ行きてえ"

  robot.respond /ひろきゅん/, (msg) ->
    msg.send "レガシーだね"

  robot.respond /Yes/, (msg) ->
    msg.send "高須クリニック"
