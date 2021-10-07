fx_version 'adamant'
game 'gta5'

client_scripts {'config.lua', 'client.lua'}
server_scripts {
    "@mysql-async/lib/MySQL.lua",
    'server.lua',
    }
ui_page {'html/index.html'}

files {

    'html/index.html', 
    'html/js/script.js',
    'html/style.css', 
    'html/images/*.png',
    'html/images/*.jpg',
   
}
