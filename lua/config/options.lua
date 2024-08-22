vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.autoindent = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- vim.opt.autochdir = true

-- settings for netew
vim.g.netrw_winsize = 15
vim.g.netrw_banner = 0

vim.opt.clipboard = "unnamedplus"

-- config so that text line breaks are aligned
vim.opt.breakindent = true
vim.opt.breakindentopt = "shift:4"

vim.opt.smartcase = true
vim.opt.ignorecase = true

-- Cấu hình format cho LSP
-- Đảm bảo bạn đã cài đặt và cấu hình LSP cho Neovim
vim.lsp.handlers["textDocument/formatting"] = function(err, result, ctx, config)
	if err ~= nil or result == nil then
		return
	end
	local bufnr = ctx.bufnr
	vim.lsp.util.apply_text_edits(result, bufnr, "utf-8")
	vim.cmd("setlocal shiftwidth=4 softtabstop=4 expandtab=" .. (vim.opt.expandtab:get() and "true" or "false"))
end

