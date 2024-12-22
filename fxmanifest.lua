fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Planetarum Scripts -- Nxody'
description 'ID Card & Badges for chat'
version '1.0'

client_scripts {
	'client.lua',
	'MugshotBase64/client.lua'
}
server_scripts {
	'Server/**/*'
}
shared_scripts {
	'config.lua',
	'@ox_lib/init.lua',
}

files {
	'MugshotBase64/html/**/*'
}

dependency 'MugshotBase64'
-- This script uses edited version of 'MugShotBase64' by BaziForYou (https://github.com/BaziForYou/MugShotBase64)
