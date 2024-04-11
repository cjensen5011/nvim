-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
-- keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- remaps from ThePrimeagen
keymap.set("n", "J", "mzJ`z", { desc = "Keeps your J in place" })

keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Keeps cursor in middle of screen when paging" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Keeps cursor in middle of screen when paging" })

keymap.set("n", "n", "nzzzv", { desc = "Keeps highlighted search in middle of screen" })
keymap.set("n", "N", "Nzzzv", { desc = "Keeps highlighted search in middle of screen" })

keymap.set("n", "Q", "<nop>", { desc = "Don't ever press capital q...just don't." })

keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Change workspaces easily" })

keymap.set("n", "<C-c>", "<ESC>", { desc = "Gotta remap that ESC..." })
keymap.set(
	"n",
	"<leader>s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Replacing the word you have highlighted" }
)

-- move hightlighted
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move hightlighted lines down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move highlighted lines up" })

-- greatest remap ever
keymap.set("x", "<leader>p", [["_dP"]], { desc = "Deletes highlighted word into void register, then pastes" })

-- next greatest remap ever : asbjornHaland
keymap.set("n", "<leader>y", '"+y', { desc = "Allows you to choose between system clipboard and vim clipboard" })
keymap.set("v", "<leader>y", '"+y', { desc = "Allows you to choose between system clipboard and vim clipboard" })
keymap.set("n", "<leader>Y", '"+Y', { desc = "Allows you to choose between system clipboard and vim clipboard" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
