-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	-- My custom remaps
	vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = 'Project View' }),

	-- Move highlighted stuff around
	vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv"),
	vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv"),

	vim.keymap.set("n", "J", "mzJ`z"),
	vim.keymap.set("n", "<C-d>", "<C-d>zz"),
	vim.keymap.set("n", "<C-u>", "<C-u>zz"),
	vim.keymap.set("n", "n", "nzzzv"),
	vim.keymap.set("n", "N", "Nzzzv"),

	-- when pasting onto higlighted word, the yank stays the same
	vim.keymap.set("x", "<leader>p", "\"_dP"),

	-- deletes and throws it into the void register instead of yanking
	vim.keymap.set("n", "<leader>d", "\"_d"),
	vim.keymap.set("v", "<leader>d", "\"_d"),

	vim.keymap.set("n", "Q", "<nop>"),

	vim.keymap.set("n", "<leader>f", function()
		vim.lsp.buf.format()
	end),

	vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz"),
	vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz"),
	vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz"),
	vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz"),
	vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { desc = 'Replace symbol' }),

	-- Undotree
	vim.keymap.set('n', '<leader>U', vim.cmd.UndotreeToggle, { desc = 'Undotree View' }),

	-- Git fugitive
	vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = 'Git fugitive' }),

	-- Zen Mode
	vim.keymap.set("n", "<leader>zz", function()
		require("zen-mode").toggle()
		vim.wo.wrap = false
	end, { desc = "Toggle Zen Mode" })
}
