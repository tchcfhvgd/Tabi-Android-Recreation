local allowCountdown = false;
local allowCountdownEnd = false;
local continue = false;

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0 then
        setProperty('health', health- 0.007);
    end
end