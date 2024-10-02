return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    visible = true,
                    show_hidden_count = true,
                    hide_dotfiles = false,
                    hide_gitignored = true,
                    hide_by_name = {
                        '.git',
                        -- '.DS_Store',
                        -- 'thumbs.db',
                    },
                    never_show = {},
                },
                hijack_netrw_behavior = 'open_current',
            }
        })
--         if vim.bo.filetype == 'netrw' and vim.b.netrw_method == nil then
--             vim.defer_fn(function()
--                 vim.cmd('enew | Neotree current dir=' .. vim.b.netrw_curdir)
--             end, 0)
--         end
		vim.keymap.set("n", "<leader>pv", ":Neotree filesystem reveal left<CR>", {})
		vim.keymap.set("n", "<leader>ppv", ":Neotree filesystem toggle left<CR>", {})
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
	end,
}
