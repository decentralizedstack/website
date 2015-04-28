fs = require 'fs'
{log, pjson} = require 'lightsaber'

data = {}

fs.writeFileSync './src/_data.json', pjson(data)
