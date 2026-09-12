local config_dir = os.getenv("HOME") .. "/.config/hypr/lua/?.lua"
package.path = package.path .. ";" .. config_dir

require("autostart")
require("binds")
require("monitors")
require("appearance")
require("input")
