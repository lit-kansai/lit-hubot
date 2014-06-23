# Descriptsion:
#   Maji-Kichi ascii art.
#
# Dependencies:
#   "eastasianwidth": "~0.1.0"
#
# Commands:
#   hubot fresh <message>
#   hubot wait <question> <where> <answer>

eastasianwidth = require 'eastasianwidth'

module.exports = (robot) -> 
  robot.respond /(fresh|FRESH)(.*)$/i, (msg) ->
    patterns = [
      "(*◔ڼ◔)",
      "┌(┌՞ਊ՞)┐",
      "└(┐卍՞ਊ ՞)卍",
      "三└(┐卍^o^)卍",
      "(☝ ⊙ਊ ⊙)☝",
      "(՞ټ՞☝☝ ",
      "┗(↑o↑)┛",
      "((☛(◜◔。◔◝)☚))"
      "L( ◔ω◔)┘三└( ◔ω◔)」"
      "✌(´◉◞౪◟＜`)-☆"
    ]
    randomNumber = Math.floor Math.random() * (patterns.length + 1);
    msg.send "#{patterns[randomNumber]}#{msg.match[2]}"


  robot.respond /wait (.*) (.*) (.*)$/i, (msg) ->
    mateyo = [
      "( ˘⊖˘) 。o( #{msg.match[1]})",
      "|#{msg.match[2]}| ┗(☋｀ )┓三 ",
      " ",
      "( ◠‿◠ )☛ #{msg.match[3]}",
      "▂▅▇█▓▒░(’ω’)░▒▓█▇▅▂うわあああああああ"
    ]

    msg.send mateyo.join "\n"

