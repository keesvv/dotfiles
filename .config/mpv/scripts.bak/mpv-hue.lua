local hue = require 'hue'

function on_init()
    os.execute("sh ~/.dotfiles/scripts/rgb/dim.sh")
end

function on_stop()
    os.execute("sh ~/.dotfiles/scripts/rgb/on.sh")
end

function on_pause_play(name, value)
    if value then
        on_stop()
    else
        on_init()
    end
end

mp.register_event('file-loaded', on_init)
mp.register_event('end-file', on_stop)
mp.observe_property('pause', 'bool', on_pause_play)
