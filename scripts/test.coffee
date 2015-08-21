# Description:
#   Allow Marvin to use programming excuse
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot excuse - Print a random programming excuse
#
# Notes:
#   None
#
# Author:
#   Thomas Durand

module.exports = (robot) ->
  robot.respond /test/i, (msg) ->
    msg.send "test"
