# Description:
#   Looks Good To ME!!!
#
# Commands:
#   hubot lgtm - Looks Good To Me!!!

require 'util'

module.exports = (robot) ->
  robot.respond /(LGTM|lgtm)$/i, (msg) ->
    robot.http("http://www.lgtm.in/g")
      .header('Accept', 'application/json')
      .get() (err, res, body) ->
        if err
          msg.send "Error in fetch json response from lgtm.in"
        else
          try
            data = JSON.parse(body)
            msg.send data.actualImageUrl
          catch _err
            msg.send "Error in parse JSON from lgtm.in"

