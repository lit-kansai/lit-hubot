# Description:
#   Show vim help anywhere!
#
# Commands:
#   :help <keyword> - Show <keyword> vim help

require 'util'

module.exports = (robot) ->
  robot.hear /:help\s*(.*)$/i, (msg) ->
    keyword = msg.match[1]
    if !keyword
      msg.send "Please input a keyword to show vimhelp"
      return

    # apiを叩く
    request = robot.http("http://vim-help-jp.herokuapp.com/api/search/json/")
      .query(query: keyword)
      .header('Accept', 'application/json')
      .get()

    request (err, res, body) ->
      if err || res.statusCode != 200
        msg.send "Error in fetch json response from vim-help-jp"
        return
      try
        data = JSON.parse(body)
        if !data.text
          msg.send 'Not Found...'
          return
        # 全角スペースを削除
        msg.send [data.text.replace(/[\u0020\u3000]/g, ""),
                  data.vimdoc_url].join('')
      catch _err
        msg.send "Error in parsing JSON from vim-help-jp"
