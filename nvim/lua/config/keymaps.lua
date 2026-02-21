local map = vim.keymap.set

-- 1. УПРАВЛЕНИЕ ФАЙЛОМ (Space + цифра)
-- 1 - Выйти, 2 - Сохранить и выйти, 3 - Выйти без сохранения
map("n", "<leader>1", "<cmd>q<cr>", { desc = "Exit" })
map("n", "<leader>2", "<cmd>wq<cr>", { desc = "Save and Exit" })
map("n", "<leader>3", "<cmd>q!<cr>", { desc = "Force Exit" })

-- 2. СИСТЕМНЫЕ И УТИЛИТЫ
map("n", "-", "<CMD>Oil<CR>", { desc = "Open Oil" })
map("n", "<C-t>", "<CMD>ToggleTerm direction=float<CR>", { desc = "Terminal" })
map("t", "<C-t>", "<cmd>close<cr>", { desc = "Close Terminal" })
map("n", "<leader>g", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
map("n", "<leader>wp", "<cmd>Telescope workspaces<cr>", { desc = "Projects" })
map("n", "<F5>", ":w<CR>:split | term python3 %<CR>", { desc = "Run Python" })

-- 3. OBSIDIAN
map("n", "<leader>8", "<cmd>ObsidianToday<cr>", { desc = "Obsidian: Today" })
map("n", "<leader>7", "<cmd>ObsidianQuickSwitch<cr>", { desc = "Obsidian: Search names" })
map("n", "<leader>4", "<cmd>ObsidianSearch<cr>", { desc = "Obsidian: Search text" })
map("n", "<leader>6", "<cmd>ObsidianNew<cr>", { desc = "Obsidian: New Note" })
map("n", "<leader>5", "<cmd>ObsidianLinks<cr>", { desc = "Obsidian: Links" })

vim.keymap.set("n", "<C-1>", ":q<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-2>", ":wq<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-3>", ":q!<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-4>", ":qa<CR>", { noremap = true, silent = true, desc = "Quit all" })

-- Запасной выход в нормальный режим на 'jj' или 'jk' (очень популярно)
vim.keymap.set("i", "jj", "<Esc>", { noremap = true })
vim.keymap.set("i", "jk", "<Esc>", { noremap = true })
