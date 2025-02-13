-- Makes the Health Bar Act like the one used in Genocide from the VS Tabi Mod.
-- Made by ExtendedCentral (v9)

-------------------------------------------------------------------------------

local tabiHealthBar = true -- Whether you want to have Tabi Health Bar.

local drainHealth = false -- Whether you want health to drain when the opponet hits a note

local moveBar = true -- DON'T TOUCH

function onUpdate()
    if tabiHealthBar and difficulty == 2 then

        --If the health bar x position is less than 343.5 we increase the x position
        --by 0.5 every frame
        if getProperty('healthBar.x') < 343.5 and difficulty == 2 then
            setProperty('healthBar.x', getProperty('healthBar.x')+0.5)
            health = getProperty('healthhealth')
            setProperty('health', health+ 100);
            tabiBarMove = false
        end

        --If the HP bar is not at the far left of the screen, we make it possible
        --to move the health bar.
        if getProperty('healthBar.x') > 50.5 and difficulty == 2 then
            moveBar = true
        end

    end

    --debugPrint(getProperty('healthBar.x')) -- 343.5

end

function goodNoteHit(id, direction, noteType, isSustainNote)
    if tabiHealthBar and difficulty == 2 then

        --We add a x2 to byfriends current note hit health
        health = getProperty('health')
        setProperty('health', health+ 0.050);


        -- If Boyfriends health is above 1.950 we add - 20 to the health bars x position.
        if health > 1.950 and moveBar == true  and difficulty == 2 then
            --debugPrint('Health Higher Than 2')
            setProperty('healthBar.x', getProperty('healthBar.x')-20)
        end

        --If the health bar ever so happens to be less than 50.5 we add 0 so it don't go
        --off screen lol
        if getProperty('healthBar.x') < 50.5 and difficulty == 2 then
            setProperty('healthBar.x', getProperty('healthBar.x')+0)
            moveBar = false
        end
		
		if getProperty('healthBar.x') > 50.5 and difficulty == 2 then
            setProperty('healthBar.x', getProperty('healthBar.x')+0)
            moveBar = true
        end

    end
    
end

function noteMiss(id, direction, noteType, isSustainNote)

end


function opponentNoteHit(id, direction, noteType, isSustainNote)
    if tabiHealthBar and difficulty == 2 then
		--if the health bar isnt it the original position we allow tabi to push back the heath bar
		if getProperty('healthBar.x') < 343.5 and difficulty == 2 then
			--debugPrint('Health Higher Than 2')
			setProperty('healthBar.x', getProperty('healthBar.x')+5)
		end
    end
	
	if drainHealth == true and getProperty('healthBar.x') > 343.2  and difficulty == 2 then
		health = getProperty('health')
		if getProperty('health') > 0.05 then
			setProperty('health', health- 0.01);
		end
	end
end