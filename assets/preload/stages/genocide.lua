local ccap = 0;

function onCreate()
	-- background shit
	makeLuaSprite('Bg', 'fire/new/youhavebeendestroyed', -510, -230);

	makeLuaSprite('sumtable', 'fire/new/overlayingsticks', -510, -230);

	makeLuaSprite('tablebg', 'fire/new/glowyfurniture', -560, -200);

	makeLuaSprite('boombox', 'tabi/mad/Destroyed_boombox', -510, -200);

	makeAnimatedLuaSprite('Fire','fire/newfireglow',-510,60)
	scaleObject('Fire',1.5,1.5)
	addAnimationByPrefix('Fire','newfireglow','FireStage',24,true)
	objectPlayAnimation('Fire','newfireglow',false)

	makeAnimatedLuaSprite('Fire2','fire/FireStage',90,60)
	scaleObject('Fire2',1.5,1.5)
	addAnimationByPrefix('Fire2','FireStage','FireStage',24,true)
	objectPlayAnimation('Fire2','FireStage',false)

	makeAnimatedLuaSprite('Fire3','fire/newfireglow',810,60)
	scaleObject('Fire3',1.5,1.5)
	addAnimationByPrefix('Fire3','fireglow','FireStage',24,true)
	objectPlayAnimation('Fire3','fireglow',false)
	
	makeLuaSprite('vignette', 'tabi/vignette', 0, 0);
	setObjectCamera('vignette', 'camother');
	setProperty('vignette.alpha', 0);
	setProperty('health', healthshouldbe)

	addLuaSprite('Bg', false);
	addLuaSprite('Fire',false);
	addLuaSprite('Fire2',false);
	addLuaSprite('Fire3',false);
	addLuaSprite('tablebg',false);
	addLuaSprite('boombox',false);
	addLuaSprite('sumtable', true);
	addLuaSprite('vignette', true);
end