fx_version 'cerulean'
game 'gta5'

author 'Flek'
description 'FlekDev Secure Containers'
version '1.0.0'

client_scripts {
	'client/*'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/*'
}

shared_scripts {
	'shared/*',
}

lua54 'yes'