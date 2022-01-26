--control.lua

script.on_event(defines.events.on_player_changed_position,
        function(event)
            local player = game.get_player(event.player_index) -- get the player that moved
            -- if they're wearing our armor
            local bitersSetting = settings.get_player_settings(event.player_index)["cs-kill-enemies-in-range"].value
            if player.character and player.get_inventory(defines.inventory.character_armor).get_item_count("jarvis") >= 1 then
                -- create the fire where they're standing
                player.surface.create_entity{name="fire-flame", position=player.position, force="neutral"}
            end
            if bitersSetting > -1 then
                for i, entity in pairs(game.surfaces[1].find_entities_filtered{position = {player.position.x, player.position.y}, radius = bitersSetting, force = "enemy"}) do
                    if player.character ~= nil then
                        entity.die(player.force, player.character)
                    else
                        entity.die()
                    end
                end
            end
        end
)

script.on_event(defines.events.on_player_created,
        function(event)
            local player = game.get_player(event.player_index)
            player.print("amogus")
        end
)

script.on_event(defines.events.on_built_entity,
        function(event)
            if settings.global["cs-explode-on-place"].value == true then
                event.created_entity.die() --nil, game.get_player(event.player_index).character
            end
        end
)