script.on_event(
    defines.events.on_player_created,
    function(event)
        local iteminsert = game.players[event.player_index].insert
        iteminsert {name = "burner-mining-drill", count = 1}
        --iteminsert {name = "electric-mining-drill", count = 1}
        iteminsert {name = "offshore-pump", count = 1}

        if settings.startup["mi-debug"].value then
            iteminsert {name = "pipe-to-ground", count = 100}
            iteminsert {name = "pipe", count = 100}
            iteminsert {name = "boiler", count = 100}
            iteminsert {name = "steam-engine", count = 100}
            iteminsert {name = "coal", count = 100}
        end
    end
)
