local packerPath

local function isWindows()
	return vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1
end

if isWindows() then
	local function get_env(var, default)
		local value = vim.fn.getenv(var)
		if value ~= nil and value ~= "" then
			return value
		else
			return default
		end
	end
	local local_appdata = get_env("LOCALAPPDATA", "C:\\Users\\(nom_dutilisateur)\\AppData\\Local")
	packerPath = local_appdata .. "\\nvim-data\\site\\pack\\packer\\start\\packer.nvim"
else
	packerPath = vim.fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
end

local ensure_packer = function()
	if vim.fn.empty(vim.fn.glob(packerPath)) > 0 then
		vim.fn.system({
			"git",
			"clone",
			"--depth",
			"1",
			"https://github.com/wbthomason/packer.nvim",
			packerPath
		})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require "packer".startup(function(use)

	use "wbthomason/packer.nvim"

	local plugins = require "core.packer.plugins"
	for _, plugin in pairs(plugins) do
		use(plugin)
	end

	if packer_bootstrap then
		require "packer".sync()
	end

	local configs = require "core.plugins"

	for i = 1, #configs do

		local modules
		local file

		if type(configs[i]) == "table" then
			if type(configs[i][1]) == "table" then
				modules = configs[i][1]
			else
				modules = {configs[i][1]}
			end
			file = configs[i][2]
		else
			modules = {configs[i]}
			file = configs[i]
		end

		local pluginStatus = true
		for _, module in pairs(modules) do
			local module_status, _ = pcall(require, module)
			pluginStatus = pluginStatus and module_status
		end

		file = "core.plugins.config."..file

		if pluginStatus then
			if not pcall(require, file) then
				if #modules == 1 then
					require(modules[1]).setup()
				end
			end
		end

	end

end)
