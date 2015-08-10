module.exports = (robot) ->
	robot.respond /fuck (.+)/i, (res) ->
    	res.send "@"+res.match[1].trim().replace("@", "")+": :fu:"

    robot.respond /insult (.+)/i, (msg) ->
    	msg.http("http://www.insultgenerator.org").get() (err, res, body) ->
    		if res.statusCode == 404
	        	msg.send 'Insult not found.'
	        else
	        	$ = require("cheerio").load(body)
	        	insult = $(".wrap").text().replace(/<br\\?>/, '').replace(/(\r\n|\n|\r)/gm,"");
	        	msg.send "@"+msg.match[1].trim().replace("@", "")+": "+insult