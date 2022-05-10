fx_version 'adamant'

game 'gta5'

author 'Lucarius'
description 'Easy West Script'
version '1.0.0'


server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',	
	'server/main.lua',
	'Config/Config.lua',
}

client_scripts {
	'@es_extended/locale.lua',
	'client/main.lua'
	'Config/Config.lua',
}

