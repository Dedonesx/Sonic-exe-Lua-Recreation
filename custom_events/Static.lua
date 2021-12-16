function onCreate()
    makeAnimatedLuaSprite('Static', 'screenstatic', 0, 0); -- "234" = sprite X pos, "567" = sprite Y pos
    addAnimationByPrefix('Static', 'idle', 'screenSTATIC', 24, false); -- "24" = framerate of animation, "false" = does the animation loop
    setProperty('Static.alpha', 0);
   
    addLuaSprite('Static', true); -- false = add behind characters, true = add over characters
    setObjectCamera('Static', 'hud'); -- shows up in the camera center as he should
end

function onEvent(name, value1, value2)
   
    if name == 'Static' then
        setProperty('Static.alpha', 255);
        objectPlayAnimation('Static', 'idle'); -- play the graphic's animation
        playSound('soundfile');
           end
end
