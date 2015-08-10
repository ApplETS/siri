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
	robot.respond /excuse/i, (msg) ->
    	msg.http("http://programmingexcuses.com").get() (err, res, body) ->
    		if res.statusCode == 404
	        	msg.send 'excuse not found.'
	        else
	        	$ = require("cheerio").load(body)
	        	excuse = $(".wrapper center a").text();
	        	msg.send excuse