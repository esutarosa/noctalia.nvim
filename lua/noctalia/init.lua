local M = {}

local cfg = require("noctalia.config.internal")
local util = require("noctalia.util")
local groups_core = require("noctalia.groups.core")
local groups_ts = require("noctalia.groups.treesitter")
local groups_lsp = require("noctalia.groups.lsp")
local g_telescope = require("noctalia.groups.plugins.telescope")
local g_cmp = require("noctalia.groups.plugins.cmp")

function M.setup(user)
	cfg.set(user)
end

---@param flavor '"dark"'|'"light"'|nil
function M.load(flavor)
	local bg = flavor or vim.o.background

	---@type Noctalia.Palette
	local palette = require("noctalia.palette").get(bg)

	vim.g.colors_name = "noctalia"
	vim.o.termguicolors = true
	vim.cmd("hi clear")

	local hls = {}
	util.append(hls, groups_core(palette))
	util.append(hls, groups_ts(palette))
	util.append(hls, groups_lsp(palette))
	util.append(hls, g_telescope(palette))
	util.append(hls, g_cmp(palette))

	pcall(cfg.current.on_highlights, hls, palette)

	util.apply(hls)
	util.set_terminal_colors(palette)
end

return M
