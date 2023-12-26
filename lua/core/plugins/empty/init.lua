local plugins = require "core.plugins.empty.plugins"

for i, plugin in pairs(plugins) do
	if not pcall(require, plugin) then
		print("Could not find " .. plugin)
		return
	end
	require(plugin).setup()
end
