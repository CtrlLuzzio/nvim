vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.shiftwidth = 4

vim.g.netrw_banner = 1
vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 4
vim.g.netrw_altv = 1
vim.g.netrw_winsize = 20

vim.api.nvim_create_autocmd("VimEnter", {
    group = vim.api.nvim_create_augroup("NetrwDirFix", { clear = true }),
    callback = function ()
    	local arg = vim.fn.argv(0)
	if vim.fn.argc() == 1 and vim.fn.isdirectory(arg) == 1 then
		vim.cmd("cd " .. vim.fn.fnameescape(arg))
		vim.cmd("bwipeout")
		vim.cmd("Lexplore")
	end
    end,
})

