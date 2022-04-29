-- TODO add checkbox to enable/disable printing of number in schedule
-- TODO get station name from schedule, so that temporary is possible as well (https://lua-api.factorio.com/latest/Concepts.html#TrainScheduleRecord)
-- TODO change final station to wait condition: "passenger_not_present" or "inactivity" with ticks > 216000 (1h) (https://lua-api.factorio.com/latest/Concepts.html#WaitCondition)
-- TODO reduce sounds to UK female
-- TODO reduce pattern settings
-- TODO add accouncement for waiting at signal (https://lua-api.factorio.com/latest/defines.html#defines.train_state)
-- TODO add accouncement for state change no_path/wait_signal -> on_the_path
-- TODO add accouncement for state change manual_control -> on_the_path
-- TODO allow lua regex expression as patterns (e.g. "regex()")
-- TODO add thumbnail.png
-- TODO add script convert_mp3_to_ogg.sh

local util = require("util")

function print_message_to_player(player, announcement, announcement_sound)
    announcement_description = announcement["description"]
    if not announcement_description
    then
        return
    end
    
    if announcement_description == "no_path"
    then
        player.print({"announcement-text.no_path"})
    elseif announcement_description == "station" or announcement_description == "final_station"
    then
        local station_name = util.get_next_station_name_for_player(player)
        local print_station_number_enabled = util.get_global_mod_setting("train_announcements_print_station_number_enabled")
        local station_number = announcement["station_number"]
        local station_count = announcement["station_count"]
        local station_number_gui_string = ""
        if print_station_number_enabled and station_number and station_count
        then
            local station_count_string = util.pad_left_string(tostring(station_count), 2, "0")
            local station_number_string = util.pad_left_string(tostring(station_number), 2, "0")
            station_number_gui_string = {"announcement-text.number_in_schedule", station_number_string, station_count_string}
        end
        player.print({"announcement-text.station", util.corrected_train_stop_name(station_name), station_number_gui_string})
    else
        --unknown announcement_description
--         game.print("ERROR: unknown sound description")
    end
end

function play_sound_for_player(player, sound)
--     game.print(game.tick .. "play: " .. sound)
    local volume = util.get_players_mod_setting(player, "train_announcements_volume")
    if volume and volume > 0 then
        player.play_sound({path = sound, volume_modifier = volume, override_sound_type = "alert"})
    end
end

function schedule_announcement(player, sound, tick)
    local player_index = util.index_of(player, global.pending_players)
    if player_index and player_index > 0
    then
--         game.print("ERROR: announcement already scheduled for player " .. player.name)
    else
        local size_before = #(global.pending_players)
        table.insert(global.pending_players, player)
        table.insert(global.pending_announcement_sound_for_players, sound)
        table.insert(global.pending_announcement_tick_for_players, tick)
        local size_after = #(global.pending_players)
--         game.print(game.tick .. "Scheduled: " .. sound .. " for player " .. player.name .. " on tick " .. tick .. "(before: " .. size_before .. ", after: " .. size_after .. ")")
    end
end

function reset_pending_announcement(player)
    local player_index = util.index_of(player, global.pending_players)
    if player_index and player_index > 0
    then
--         local size_before = #(global.pending_players)
        table.remove(global.pending_players, player_index)
        table.remove(global.pending_announcement_sound_for_players, player_index)
        table.remove(global.pending_announcement_tick_for_players, player_index)
--         local size_after = #(global.pending_players)
--         game.print(game.tick .. "Reset pending player " .. player.name .. "(before: " .. size_before .. ", after: " .. size_after .. ")")
    end
end

function get_and_remove_pending_announcement(player)
    local player_index = util.index_of(player, global.pending_players)
    local announcement_sound = nil
    if player_index and player_index > 0
    then
        announcement_sound = global.pending_announcement_sound_for_players[player_index]
        table.remove(global.pending_players, player_index)
        table.remove(global.pending_announcement_sound_for_players, player_index)
        table.remove(global.pending_announcement_tick_for_players, player_index)
--         game.print(game.tick .. "got and removed: " .. announcement_sound)
    else
--         game.print(game.tick .. "ERROR: player not found in pending_players")
    end
    return announcement_sound
end

function has_pending_announcement_on_tick(player, tick)
    local player_index = util.index_of(player, global.pending_players)
    if player_index and player_index > 0
    then
        local announcement_tick = global.pending_announcement_tick_for_players[player_index]
        if announcement_tick and announcement_tick == tick
        then
--             game.print(game.tick .. "Detected pending announcement on this tick")
            return true
        else
--             game.print(game.tick .. "Pending announcement for player found, but not on this tick")
        end
    else
--         game.print(game.tick .. "ERROR: player " .. player.name .. " not found in pending_players (" .. #(global.pending_players) .. ")")
    end
    return false
end

function check_and_set_minimum_ticks_between_announcements(player)
    local minSecondsBetweenAnnouncements = util.get_global_mod_setting("train_announcements_minimum_seconds_between_announcements")
    if not minSecondsBetweenAnnouncements
    then
        minSecondsBetweenAnnouncements = 0.0
    end
    
    if global.previous_announcement_tick_for_players[player.name] == nil or game.tick >= global.previous_announcement_tick_for_players[player.name] + util.seconds_to_ticks(minSecondsBetweenAnnouncements)
    then
        global.previous_announcement_tick_for_players[player.name] = game.tick
        return true
    else
--         game.print("tick: " .. game.tick .. ", skipping sound as minimum ticks not passed -> probably a duplicate")
        return false
    end
end

function train_is_on_announcement_distance(train, player)
    local required_rails_to_next_stop = util.get_global_mod_setting("train_announcements_number_of_rails_before_station")
    local actual_rails_to_next_stop = util.get_number_of_rails_to_next_stop(train)
    return actual_rails_to_next_stop and required_rails_to_next_stop and required_rails_to_next_stop > 0 and actual_rails_to_next_stop == required_rails_to_next_stop
end

function has_entered_train_state_no_path(player)
    return global.current_train_state_for_players[player.name] == defines.train_state.no_path and 
           global.current_train_state_for_players[player.name] ~= global.previous_train_state_for_players[player.name]
           
end

function needs_nopath_announcement(player)
    return has_entered_train_state_no_path(player)
end

function needs_station_announcement(player)
    local train = util.get_train_for_player(player)
    return train and train.valid and train_is_on_announcement_distance(train, player)
end

function get_station_sound_with_matching_name_pattern(player, station_name)
    for i = 1,50,1 
    do 
        local padded_number = util.pad_left_string(tostring(i),2,0)
        local name_pattern = util.get_global_mod_setting("train_announcements_station" .. padded_number .. "_name_pattern")
        if name_pattern and string.len(name_pattern) > 0 and string.len(string.gsub(name_pattern, "%s+", "")) > 0
        then
            if string.find(station_name, name_pattern, 1, true)
            then
--                 game.print(game.tick .. "found match of " .. name_pattern .. " in " .. station_name)
                return util.get_global_mod_setting("train_announcements_station" .. padded_number .. "_announcement_sound")
            else
--                 game.print(game.tick .. "no match of pattern: " .. name_pattern)
            end
        else
--             game.print(game.tick .. "name pattern not found at all in settings")
        end
    end
    return nil
end

function get_announcement_for_player(player)
    local announcement = nil
    if needs_nopath_announcement(player)
    then
        announcement = {}
        announcement["jingle_sound"] = util.get_global_mod_setting("train_announcements_override_interruption_jingle_sound")
        announcement["sound"] = util.get_global_mod_setting("train_announcements_interruption_announcement_sound")
        announcement["description"] = "no_path"
    elseif needs_station_announcement(player)
    then
        announcement = {}
        local train = util.get_train_for_player(player)
        if train and train.valid
        then
            if util.is_approaching_final_station(train)
            then
                announcement["jingle_sound"] = util.get_global_mod_setting("train_announcements_override_final_station_jingle_sound")
                announcement["sound"] = util.get_global_mod_setting("train_announcements_override_final_station_announcement_sound")
                announcement["description"] = "final_station"
            else
                local station_number = util.get_number_of_approaching_station_in_schedule(train)
                local station_count = util.get_number_of_stations_in_schedule(train)
                local station_name = util.get_next_station_name_for_player(player)
                if station_number and station_name
                then
                    announcement["jingle_sound"] = util.get_global_mod_setting("train_announcements_override_station_jingle_sound")
                    announcement["sound"] = get_station_sound_with_matching_name_pattern(player, station_name)
                    announcement["description"] = "station"
                    announcement["station_number"] = station_number
                    announcement["station_count"] = station_count
                end
            end
        end
        
        -- fall back to defaults if necessary
        if not announcement["sound"] or not game.is_valid_sound_path(announcement["sound"])
        then
            announcement["sound"] = util.get_global_mod_setting("train_announcements_default_station_announcement_sound")
        end
        if not announcement["description"] or announcement["description"] == ""
        then
--             game.print("ERROR: sound type was not given")
            announcement["description"] = "station"
        end
    end

    -- fall back to defaults if necessary
    if announcement and ( not announcement["jingle_sound"] or not game.is_valid_sound_path(announcement["jingle_sound"]) )
    then
        announcement["jingle_sound"] = util.get_global_mod_setting("train_announcements_default_jingle_sound")
    end

    return announcement
end

function update_train_states_for_player(player)
    global.previous_train_state_for_players[player.name] = global.current_train_state_for_players[player.name]
    
    local train = util.get_train_for_player(player)
    if train and train.valid
    then
        global.current_train_state_for_players[player.name] = train.state
    else
        global.current_train_state_for_players[player.name] = nil
    end
    
--     if global.current_train_state_for_players[player.name] ~= global.previous_train_state_for_players[player.name]
--     then
--         game.print("State change: " .. util.train_state_to_string(global.previous_train_state_for_players[player.name]) .. " -> " .. util.train_state_to_string(global.current_train_state_for_players[player.name]))
--     end
end

function process_player(player)
    update_train_states_for_player(player)
    
    local announcement = get_announcement_for_player(player)
    if announcement and check_and_set_minimum_ticks_between_announcements(player)
    then
        reset_pending_announcement(player)
        
        local announcement_jingle_sound = announcement["jingle_sound"]
        local announcement_sound = announcement["sound"]
        local announcement_description = announcement["description"]
        
        local print_messages_enabled = util.get_players_mod_setting(player, "train_announcements_print_announcement_messages_enabled")
        if print_message_enabled and announcement_description
        then
            print_message_to_player(player, announcement_description, announcement_sound)
        end

        local play_sounds_enabled = util.get_players_mod_setting(player, "train_announcements_play_announcement_sounds_enabled")
        if play_sounds_enabled
        then
            if announcement_jingle_sound and game.is_valid_sound_path(announcement_jingle_sound)
            then
                play_sound_for_player(player, announcement_jingle_sound)
                local seconds_between_jingle_and_announcement = util.get_global_mod_setting("train_announcements_seconds_between_jingle_and_announcement")
                if announcement_sound and game.is_valid_sound_path(announcement_sound) and seconds_between_jingle_and_announcement
                then
                    schedule_announcement(player, announcement_sound, game.tick + util.seconds_to_ticks(seconds_between_jingle_and_announcement))
                else
    --                 game.print("WARNING: announcement config invalid (announcement_sound=" .. announcement_sound .. ")")
                end
            elseif announcement_sound and game.is_valid_sound_path(announcement_sound)
            then
                play_sound_for_player(player, announcement_sound)
            end
        end
    elseif has_pending_announcement_on_tick(player, game.tick)
    then
        local play_sounds_enabled = util.get_players_mod_setting(player, "train_announcements_play_announcement_sounds_enabled")
        local announcement_sound = get_and_remove_pending_announcement(player)
        if play_sounds_enabled and announcement_sound
        then
            play_sound_for_player(player, announcement_sound)
        end
    end
end

function process_ontick_event(event)
    for _,player in pairs(game.players) do
        if player and player.valid
        then
            process_player(player)
        end
    end
end

script.on_event(defines.events.on_tick, function(event)
    if event
    then
        process_ontick_event(event)
    end
end)

function init_globals()
    if not global.pending_players
    then
        global.pending_players = {}
    end
    
    if not global.pending_announcement_sound_for_players
    then
        global.pending_announcement_sound_for_players = {}
    end

    if not global.pending_announcement_tick_for_players
    then
        global.pending_announcement_tick_for_players = {}
    end
    
    if not global.current_train_state_for_players
    then
        global.current_train_state_for_players = {}
    end

    if not global.previous_train_state_for_players
    then
        global.previous_train_state_for_players = {}
    end
    
    if not global.previous_announcement_tick_for_players
    then
        global.previous_announcement_tick_for_players = {}
    end
end

script.on_init(init_globals)
script.on_configuration_changed(init_globals)
