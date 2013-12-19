module.exports = (robot) ->

  robot.hear /\/r\/([\w]+)/, (msg) ->
    msg.send "http://www.reddit.com/r/#{msg.match[1]}"
