fx_version 'cerulean'
game 'gta5'


description 'QB-Garages'
version '1.0.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'config.lua',
}

author 'MaDHouSe'

description 'Qb Drifting'

version '1.0'

client_script {
    'client/main.lua'
}

server_script {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}