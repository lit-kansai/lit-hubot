# Description:
#   Our play
#
#
#
module.exports = (robot) ->
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
