require("autocmds")

---@type ChadrcConfig
local M = {}

M.ui = {
	statusline = {
		theme = "vscode_colored",
		separator_style = "arrow",
	},

	theme = "gruvbox",
	hl_override = {
		IndentBlanklineContextChar = {
			fg = "#d5c4a1",
		},
		IndentBlanklineContextStart = {
			bg = "#282828",
		},
		DiffChange = {
			fg = "#fabd2f",
		},
		Comment = {
			fg = "#bdae93",
			italic = true,
		},
	},

	transparency = true,
}

return M
