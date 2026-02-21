-- Настройки LazyVim
local opt = vim.opt

-- langmap (ровно 26 букв для соответствия A-Z)
opt.langmap =
  "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"

-- Базовые настройки
opt.relativenumber = true -- Относительные номера строк
opt.scrolloff = 10 -- Скролл-отступ
opt.mouse = "a" -- Поддержка мыши

-- Убираем задержку после нажатия Esc
vim.opt.timeoutlen = 100
vim.opt.ttimeoutlen = 10

vim.opt.clipboard = "unnamedplus"
