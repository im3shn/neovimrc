function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 10000,
		config = function()
			require("rose-pine").setup({
				disable_background = true,
				highlight_groups = {
					-- ["@keyword"] = { fg = "#ebbcba" },
					-- ["@type"] = { fg = "#ebbcba" },
				},
			})

			vim.cmd("colorscheme rose-pine")

			ColorMyPencils()
		end,
	},
-- 	{
-- 		-- Theme inspired by Atom
-- 		"folke/tokyonight.nvim",
-- 		name = "tokyonight",
-- 		priority = 1000,
-- 		config = function()
-- 			vim.cmd.colorscheme("tokyonight-night")
-- 		end,
-- 	},
--     {
--         "catppuccin/nvim",
--         name = "catppuccin",
--         priority = 1000,
--         config = function ()
--             vim.cmd.colorscheme("catppuccin-mocha")
--         end
--     }
}
