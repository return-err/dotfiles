local mainMod = "SUPER"

-- 基本操作
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd("foot"))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind("ALT + SPACE", hl.dsp.exec_cmd("hyprlauncher"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + 1", hl.dsp.exec_cmd("firefox"))

-- Fn
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 10%-"), { repeating = true, locked = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set 10%+"), { repeating = true, locked = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { repeating = true, locked = true })
  hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { repeating = true, locked = true })

-- 截圖
hl.bind("Print", hl.dsp.exec_cmd([[grim -g "$(slurp)" - | wl-copy && notify-send "截圖成功" "已保存到剪貼板"]]))
hl.bind("SHIFT + Print", hl.dsp.exec_cmd([[grim -g "$(slurp)" - | swappy -f -]]))
hl.bind("ALT + Print", hl.dsp.exec_cmd([[grim ~/Pictures/Screenshots/$(date +'%Y-%m-%d_%H-%M-%S').png && wl-copy < ~/Pictures/Screenshots/$(date +'%Y-%m-%d_%H-%M-%S').png && notify-send "截圖成功" "全螢幕已儲存並複製到剪貼簿"]]))

-- 移動視窗焦點 (Focus)
hl.bind("ALT + H", hl.dsp.focus({ direction = "l" }))
hl.bind("ALT + J", hl.dsp.focus({ direction = "d" }))
hl.bind("ALT + K", hl.dsp.focus({ direction = "u" }))
hl.bind("ALT + L", hl.dsp.focus({ direction = "r" }))
-- 移動視窗位置 (Move Window)
hl.bind("ALT + SHIFT + H", hl.dsp.window.move({ direction = "l" }))
hl.bind("ALT + SHIFT + J", hl.dsp.window.move({ direction = "d" }))
hl.bind("ALT + SHIFT + K", hl.dsp.window.move({ direction = "u" }))
hl.bind("ALT + SHIFT + L", hl.dsp.window.move({ direction = "r" }))

