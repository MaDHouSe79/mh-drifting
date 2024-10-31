fx_version 'cerulean'
game 'gta5'

author 'MaDHouSe'
description 'MH Drifting'
version '1.0.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'config.lua',
}

client_script {
    'client/main.lua'
}

server_script {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua',
    'server/update.lua',
}
