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
					
					delay 1 -- Give it a second to start
					
					-- Minimize the Spotify window
					tell application "System Events"
						tell process "Spotify"
							try
								set frontmost to true
								set visible of window 1 to false -- This minimizes the window
							end try
						end tell
					end tell
				end if
			end if
		end tell
	end if
end repeat
