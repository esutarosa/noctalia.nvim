local U = {}

---@param style CodeStyle|nil
---@param fg string|nil
---@param bg string|nil
---@param sp string|nil
---@return vim.api.keyset.highlight
function U.h(style, fg, bg, sp)
	local hl = {}
	if fg then
		hl.fg = fg
	end
	if bg then
		hl.bg = bg
	end
	if sp then
		hl.sp = sp
	end
	if style and style ~= "none" then
		hl[style] = true
	end
	return hl
end

---@param dst table<string, vim.api.keyset.highlight>
---@param src table<string, vim.api.keyset.highlight>
function U.append(dst, src)
	for k, v in pairs(src) do
		dst[k] = v
	end
end

function U.apply(hls)
	for group, spec in pairs(hls) do
		vim.api.nvim_set_hl(0, group, spec)
	end
end

function U.set_terminal_colors(p)
	if not p.term then
		return
	end
	vim.g.terminal_color_0 = p.term.regular[1]
	vim.g.terminal_color_1 = p.term.regular[2]
	vim.g.terminal_color_2 = p.term.regular[3]
	vim.g.terminal_color_3 = p.term.regular[4]
	vim.g.terminal_color_4 = p.term.regular[5]
	vim.g.terminal_color_5 = p.term.regular[6]
	vim.g.terminal_color_6 = p.term.regular[7]
	vim.g.terminal_color_7 = p.term.regular[8]
	vim.g.terminal_color_8 = p.term.bright[1]
	vim.g.terminal_color_9 = p.term.bright[2]
	vim.g.terminal_color_10 = p.term.bright[3]
	vim.g.terminal_color_11 = p.term.bright[4]
	vim.g.terminal_color_12 = p.term.bright[5]
	vim.g.terminal_color_13 = p.term.bright[6]
	vim.g.terminal_color_14 = p.term.bright[7]
	vim.g.terminal_color_15 = p.term.bright[8]
end

return U
