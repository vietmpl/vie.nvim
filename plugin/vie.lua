vim.filetype.add({
	extension = {
		vie = "vie",
	},
})

local gr = vim.api.nvim_create_augroup("vie.nvim", {})

vim.api.nvim_create_autocmd("FileType", {
	group = gr,
	pattern = "vie",
	callback = function()
		vim.treesitter.query.add_directive("inject-vie!", function(_, _, bufnr, _, metadata)
			---@cast bufnr number
			local fname = vim.fs.basename(vim.api.nvim_buf_get_name(bufnr))
			local _, _, ext, _ = string.find(fname, ".*%.(%a+)(%.%a+)")
			if ext then
				metadata["injection.language"] = ext
			end
		end, {})
	end,
})

vim.api.nvim_create_autocmd("User", {
	group = gr,
	pattern = "TSUpdate",
	callback = function()
		require("nvim-treesitter.parsers").vie = {
			install_info = {
				url = "https://github.com/vietmpl/tree-sitter-vie",
				revision = "master",
				queries = "queries/",
			},
		}
	end,
})
