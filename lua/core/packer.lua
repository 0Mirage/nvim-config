local packerPath

local	function isWindows()
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

local reSync = false
local packer_bootstrap = ensure_packer()

return require "packer".startup(function(use)
	use "wbthomason/packer.nvim"

	use "ryanoasis/vim-devicons"
	use "gelguy/wilder.nvim"
	use "kevinhwang91/nvim-hlslens"
	use "catppuccin/nvim"
	use "NvChad/nvim-colorizer.lua"
	use "github/copilot.vim"
	use "mg979/vim-visual-multi"
	use "tpope/vim-commentary"
	use "tpope/vim-surround"
	use "christoomey/vim-tmux-navigator"
	use "lambdalisue/suda.vim"

	use "L3MON4D3/LuaSnip"
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-nvim-lsp"
	use "williamboman/mason.nvim"
	use "williamboman/mason-lspconfig.nvim"
	use "neovim/nvim-lspconfig"

	use "nvim-treesitter/nvim-treesitter"
	use {
		"nvim-treesitter/nvim-treesitter-textobjects",
		after = "nvim-treesitter",
		requires = "nvim-treesitter/nvim-treesitter",
		config = function()
			if pcall(require, "nvim-treesitter.textobjects.repeatable_move") then
				local ts_repeat_move = require "nvim-treesitter.textobjects.repeatable_move"
				vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move)
				vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_opposite)
				vim.keymap.set({ "n", "x", "o" }, "f", ts_repeat_move.builtin_f)
				vim.keymap.set({ "n", "x", "o" }, "F", ts_repeat_move.builtin_F)
				vim.keymap.set({ "n", "x", "o" }, "t", ts_repeat_move.builtin_t)
				vim.keymap.set({ "n", "x", "o" }, "T", ts_repeat_move.builtin_T)
			end
		end
	}

	use "max397574/better-escape.nvim"

	use "preservim/tagbar"
	use "akinsho/toggleterm.nvim"

	use "lewis6991/gitsigns.nvim"

	use "gen740/SmoothCursor.nvim"
	use "lukas-reineke/indent-blankline.nvim"

	use {
		"ggandor/leap.nvim",
		config = function() require("leap").set_default_keymaps() end
	}

	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})

	use {
		"goolord/alpha-nvim",
		requires = "nvim-tree/nvim-web-devicons",
	}

	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		}
	}

	use {
		"romgrk/barbar.nvim",
		requires = {
			"nvim-tree/nvim-web-devicons",
			"lewis6991/gitsigns.nvim"
		}
	}
	-- use {
	-- 	"akinsho/bufferline.nvim",
	-- 	tag = "*",
	-- 	requires = "nvim-tree/nvim-web-devicons"
	-- }

	use({
		"utilyre/barbecue.nvim",
		tag = "*",
		requires = {
			"neovim/nvim-lspconfig",
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons"
		},
	})

	use {
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-live-grep-args.nvim"
		}
	}

	-- Lualine
	use {
		"nvim-lualine/lualine.nvim",
		requires = {
			"nvim-tree/nvim-web-devicons",
			opt = true
		}
	}

	use "windwp/nvim-autopairs"

	use {
		"kevinhwang91/nvim-ufo",
		requires = "kevinhwang91/promise-async",
	}

	if packer_bootstrap then
		require "packer".sync()
	end
	require "core.plugins"
end)
