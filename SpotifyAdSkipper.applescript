repeat
	delay 3 -- Check every 3 seconds
	
	tell application "System Events"
		set isRunning to (name of processes) contains "Spotify"
	end tell
	
	if isRunning then
		tell application "Spotify"
			if player state is playing then
				set trackName to name of current track
				set trackArtist to artist of current track
				set trackDuration to duration of current track
				
				-- Basic heuristic: ad if no artist or short duration
				if trackArtist is "" or trackDuration is less than 31 then
					log "Ad detected. Restarting Spotify..."
					
					quit
					delay 2
					
					tell application "Spotify" to activate
					delay 3
					
					tell application "Spotify" to play
				end if
			end if
		end tell
	end if
end repeat
