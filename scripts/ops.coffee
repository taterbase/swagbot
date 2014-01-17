oppable = [
  "supershabam"
  "taterbase"
  "Robdor"
  "version2beta"
  "altj"
  "king_bozar"
  "addisonj"
  "jergason"
  "jesusabdullah"
  "themiddleman"
]
module.exports = (robot) ->

  robot.respond /add ops/i, (msg) ->
    oppable.forEach (opper) ->
      robot.adapter.command "MODE", msg.message.user.room, "+o", opper

  robot.enter (data) ->
    user = data.message.user.name
    room = data.message.user.room

    if (oppable.some (opper) -> opper is user)
      robot.adapter.command "MODE", room, "+o", user
