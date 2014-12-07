# Description:
#   Our play
#
#
#
module.exports = (robot) ->
  robot.hear /ぬるぽ/, (msg) ->
    msg.send "ガッ"

#  robot.respond /save たけ(は)?(.+)$/, (msg) ->
#    robot.brain.data.take_is = msg.match[2]
#    robot.brain.save
 #   msg.send robot.brain.data.take_is

#  robot.respond /たけ/, (msg) ->
#    if robot.brain.data.take_is
#      msg.send robot.brain.data.take_is
 #   else
 #     msg.send "クラブ大好き"

 # robot.hear /よっさん/, (msg) ->
 #   msg.send "クラブ行きてえ"

  robot.respond /しょーさま/, (msg) ->
    msg.send "ジーニアスですけど"

  robot.respond /ひろきゅん/, (msg) ->
    msg.send "レガシーだね"

 # robot.respond /Yes/, (msg) ->
 #   msg.send "高須クリニック"
  robot.respond /えんか/, (msg) ->
    msg.send "なるほど?"

  robot.respond /りょーちん/, (msg) ->
    msg.send "わりとヤバイ"
