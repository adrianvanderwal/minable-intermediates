script.on_event(
  defines.events.on_cutscene_cancelled,
  function(event)
    local iteminsert = game.players[event.player_index].insert
    iteminsert {name = 'burner-mining-drill', count = 1}
    --iteminsert {name = "electric-mining-drill", count = 1}
    iteminsert {name = 'offshore-pump', count = 1}
  end
)
