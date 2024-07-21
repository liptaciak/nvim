vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
	end,
})

vim.lsp.start({
	name = 'clangd',
	cmd = {'/usr/bin/clangd', '--enable-config'},
})
