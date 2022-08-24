local GROUP = script:GetCustomProperty("Group"):WaitForObject()

function Tick()
    for i, c in ipairs(GROUP:GetChildren()) do
        local screen_pos = UI.GetScreenPosition(c:GetWorldPosition())
        local screen = UI.GetScreenSize()
        local scale = c:GetWorldScale()

        if(screen_pos ~= nil and screen_pos.x > -(scale.x * 100 + scale.x/2 * 100) and screen_pos.x < screen.x and screen_pos.y > -(scale.y * 100 + scale.y/2 * 100) and screen_pos.y < screen.y) then
            print("Object on screen: ", c.name, (screen_pos - (screen / 2)).size)
        else
            print("Object off screen: ", c.name)
        end
    end
end