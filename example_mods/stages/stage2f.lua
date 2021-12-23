function onCreate()
	-- background shit
	makeLuaSprite('bg-front', 'bg-front', -300, -300);
	setLuaSpriteScrollFactor('bg-front', 1, 1);
	scaleObject('bg-front', 1.7, 1.7);
	
	makeAnimatedLuaSprite('animsfore', 'animsfore', -100, -300);
	setLuaSpriteScrollFactor('animsfore', 1.1, 1.1);
	scaleObject('animsfore', 1.7, 1.7);

	addAnimationByPrefix('animsfore','animsfore','Beats',24,true);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setLuaSpriteScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setLuaSpriteScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setPropertyLuaSprite('stagelight_right', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
		setLuaSpriteScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('bg-front', false);
	addLuaSprite('animsfore', true);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end