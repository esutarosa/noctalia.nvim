---@class Noctalia.Term
---@field cursor_fg string
---@field cursor_bg string
---@field fg string
---@field bg string
---@field regular string[]
---@field bright string[]
---@field sel_fg string
---@field sel_bg string

---@class Noctalia.Palette
---@field mPrimary string
---@field mOnPrimary string
---@field mSecondary string
---@field mOnSecondary string
---@field mTertiary string
---@field mOnTertiary string
---@field mError string
---@field mOnError string
---@field mSurface string
---@field mOnSurface string
---@field mSurfaceVariant string
---@field mOnSurfaceVariant string
---@field mOutline string
---@field mShadow string
---@field term Noctalia.Term

local P = {}

P.dark = {
	mPrimary = "#fff59b",
	mOnPrimary = "#0e0e43",
	mSecondary = "#a9aefe",
	mOnSecondary = "#0e0e43",
	mTertiary = "#9BFECE",
	mOnTertiary = "#0e0e43",
	mError = "#FD4663",
	mOnError = "#0e0e43",
	mSurface = "#070722",
	mOnSurface = "#f3edf7",
	mSurfaceVariant = "#11112d",
	mOnSurfaceVariant = "#7c80b4",
	mOutline = "#21215F",
	mShadow = "#070722",
	term = {
		cursor_fg = "#fff59b",
		cursor_bg = "#070722",
		fg = "#f3edf7",
		bg = "#070722",
		regular = { "#11112d", "#FD4663", "#9BFECE", "#fff59b", "#a9aefe", "#FD4663", "#9BFECE", "#f3edf7" },
		bright = { "#21215F", "#FD4663", "#9BFECE", "#fff59b", "#a9aefe", "#FD4663", "#9BFECE", "#ffffff" },
		sel_fg = "#070722",
		sel_bg = "#f3edf7",
	},
}

P.light = {
	mPrimary = "#5d65f5",
	mOnPrimary = "#dadcff",
	mSecondary = "#8E93D8",
	mOnSecondary = "#dadcff",
	mTertiary = "#0e0e43",
	mOnTertiary = "#fef29a",
	mError = "#FD4663",
	mOnError = "#0e0e43",
	mSurface = "#e6e8fa",
	mOnSurface = "#4b55c8",
	mSurfaceVariant = "#eff0ff",
	mOnSurfaceVariant = "#0e0e43",
	mOutline = "#8288fc",
	mShadow = "#f3edf7",
	term = {
		cursor_fg = "#5d65f5",
		cursor_bg = "#e6e8fa",
		fg = "#4b55c8",
		bg = "#e6e8fa",
		regular = { "#eff0ff", "#FD4663", "#0e0e43", "#5d65f5", "#8E93D8", "#FD4663", "#0e0e43", "#4b55c8" },
		bright = { "#8288fc", "#FD4663", "#0e0e43", "#5d65f5", "#8E93D8", "#FD4663", "#0e0e43", "#0e0e43" },
		sel_fg = "#e6e8fa",
		sel_bg = "#4b55c8",
	},
}

---@param mode '"dark"'|'"light"'
---@return Noctalia.Palette
function P.get(mode)
	return P[mode == "light" and "light" or "dark"]
end
return P
