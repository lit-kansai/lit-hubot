# Description:
#   >Prepare for sudden death.<
#
# Dependencies:
#   "eastasianwidth": "~0.1.0"
#
# Configuration:
#   None
#
# Commands:
#   hubot >< <message> - Ascii art generator for sudden death.
#
# Notes:
#   None
#
# Author:
#   saihoooooooo

eastasianwidth = require 'eastasianwidth'

strpad = (str, count) ->
  new Array(count + 1).join str

module.exports = (robot) ->
  robot.respond />< (.*)$/i, (msg) ->
    message = msg.match[1].replace /^\s+|\s+$/g, ''
    return until message.length

    length = Math.floor eastasianwidth.length(message) / 2

    suddendeath = [
      "＿#{strpad '人', length + 2}＿"
      "＞　#{message}　＜"
      "￣Y#{strpad '^Y', length}￣"
    ]
    msg.send suddendeath.join "\n"

  robot.respond /突然の(.*)$/i, (msg) ->
    message = msg.match[1].replace /^\s+|\s+$/g, ''
    return until message.length

    length = Math.floor eastasianwidth.length(message) / 2

    suddendeath = [
      "＿#{strpad '人', length + 2}＿"
      "＞　突然の#{message}　＜"
      "￣Y#{strpad '^Y', length}￣"
    ]
    msg.send suddendeath.join "\n"