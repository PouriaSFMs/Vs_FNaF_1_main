function onCreate()
	-- background shit
	makeLuaSprite('office', 'office', -300, -300);
	setLuaSpriteScrollFactor('office', 1, 1);
	scaleObject('office', 1.3, 1.3);
	
	makeLuaSprite('door-frame', 'door-frame', -300, -300);
	setLuaSpriteScrollFactor('door-frame', 1.05, 1.05);
	scaleObject('door-frame', 1.3, 1.3);

	addLuaSprite('office', false);
	addLuaSprite('door-frame', true);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end