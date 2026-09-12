local mainMod = "SUPER"

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd("foot"))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind("CONTROL + SPACE", hl.dsp.exec_cmd("hyprlauncher"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 10%-"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set 10%+"))

hl.bind("Print", hl.dsp.exec_cmd([[grim -g "$(slurp)" - | wl-copy && notify-send "截圖成功" "已保存到剪貼板"]]))
hl.bind("SHIFT + Print", hl.dsp.exec_cmd([[grim -g "$(slurp)" - | swappy -f -]]))
hl.bind("ALT + Print", hl.dsp.exec_cmd([[grim ~/Pictures/Screenshots/$(date +'%Y-%m-%d_%H-%M-%S').png && wl-copy < ~/Pictures/Screenshots/$(date +'%Y-%m-%d_%H-%M-%S').png && notify-send "截圖成功" "全螢幕已儲存並複製到剪貼簿"]]))
