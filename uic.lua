-- flip#2454

Config = {
	ConstantAcceleration = {0, 0, 0}
}


Client.OnStart = function()
	-- Variables
	clicks = 0

	-- Some options
	UI.Crosshair = false
	Pointer:Show()
	Camera:SetModeFree()


	-- Time
	Time.Current = Time.Noon
	TimeCycle.On = false
	TimeCycle.Marks.Noon.SkyColor = Color(12,12,12)
	TimeCycle.Marks.Noon.HorizonColor = Color(12,12,12)
	TimeCycle.Marks.Noon.AbyssColor = Color(12,12,12)

	-- Turn off the clouds
	Clouds.On = false

	-- UI
	clickButton = Button("             \n    Click    \n             ", Anchor.HCenter, Anchor.VCenter)
	clickButton.TextColor = Color(0, 0, 0)

	clickCount = Label("", Anchor.HCenter, Anchor.VCenter)

	name = Label("User: " .. Player.Username, Anchor.HCenter, Anchor.HCenter)
end

Client.Tick = function(dt)


	clickButton.OnPress = function()
		click()
	end

	-- Clicking function
	click = function()
		clicks = clicks + 1
		clickCount.Text = tostring(clicks)
	end

end


-- Server code

Server.Tick = function(dt)

end
