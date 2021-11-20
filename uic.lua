-- flip#2454

Config = {
	ConstantAcceleration = {0, 0, 0}
}

-- Maybe in future
makeMap = function()
	
	
end


Client.OnStart = function()
	makeMap()

	-- Variables
	clicks = 0

	clickPrice = 100
	clickers = 0

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

	-- You can't tell me what to do with my minigame
	if Player.Username == "fl1pnatic" then
		print("Hello, Fl1pNatic")
	end

end

Client.Tick = function(dt)

	-- Click button
	clickButton.OnPress = function()
		click()
	end

	-- Clicking function
	click = function()
		clicks = clicks + 1
	end

	-- Actions
	local timers = Timer(1.0, true, function()
		--clicks = clicks + clickers/10
	end)


	local loop = Timer(0.1, true, function()
		clickCount.Text = tostring(clicks)
	end)
end


-- Server code

Server.Tick = function(dt)

end
