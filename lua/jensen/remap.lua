vim.g.mapleader = " " -- space = leader
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "alias for :Explore" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move highlighted lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move hightlighted lines up" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Keeps your J in place" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Keeps cursor in middle of screen when paging" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Keeps cursor in middle of screen when paging" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Keeps highlighted search in middle of screen" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Keeps highlighted search in middle of screen" })

vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Deletes highlighted word into void register, then pastes" })

-- next greatest remap ever : asbjornHaland
vim.keymap.set(
	{ "n", "v" },
	"<leader>y",
	[["+y]],
	{ desc = "Allows you to choose between system clipboard and vim clipboard" }
)
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Allows you to choose between system clipboard and vim clipboard" })

-- hard mode
vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "press two buttons instead of one to Esc" })

vim.keymap.set("n", "Q", "<nop>", { desc = "Don't hit Q, just don't..." })
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Change workspaces easily" })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "Quick Fix cnext" })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "Quick Fix cprev" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Quick Fix lnext" })
vim.keymap.set("n", "<leader>y", "<cmd>lprev<CR>zz", { desc = "Quick Fix lprev" })

vim.keymap.set(
	"n",
	"<leader>s",
	[[:%/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Replacing the word you have highlighted" }
)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")

