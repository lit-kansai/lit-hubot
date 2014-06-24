# Description:
#   Log borrowing and lending
#
# Commands:
#   hubot brw <users> <thing>
#   hubot ret <id>

module.exports = (robot) ->
  robot.brain.data.brw ?= {}
  robot.respond /brw (@\S+) (.+)$/i, (msg) ->
    id = msg.message.id
    me = msg.message.name
    you = msg.match[1]
    thing = msg.match[2]
    robot.brain.data.brw[id] ?= []
    obj =
      id : robot.brain.data.brw[id].length
      you : you
      thing : thing
      ret : false
    robot.brain.data.brw[id].push(obj)
    robot.brain.save()
    msg.send "#{me} borrowed #{thing} from #{you}, id : #{obj.id}"

  robot.respond /ret (\d+)$/i, (msg) ->
    num = msg.match[1]
    obj = robot.brain.data.brw[msg.message.id][num]
    if obj
      obj.ret = true
      robot.brain.save()
      msg.send "#{msg.message.name} returned #{obj.thing} to #{obj.you}"
  robot.respond /wib$/, (msg) ->
    response = robot.brain.data.brw[msg.message.id].map (item) ->
      not item.ret
    .reduce (prev, curr) ->
      prev + "id : #{curr.id}, #{curr.thing} from #{curr.you} \n"
    , ''
