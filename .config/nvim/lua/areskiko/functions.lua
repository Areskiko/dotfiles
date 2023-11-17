function NewShardFile()
	local name = vim.fn.input("File name: ")
	local dir = vim.fn.expand('%:p:h')
	local taken = io.popen('find ' .. dir .. ' -mindepth 1 -maxdepth 1'):lines()

	local s, e, is, ie
	local next
	local name_regex = "%d+%-%a+%.md$"
	local id_regex = "%d+"
	local existing
	local existing_id
	local existing_name
	for t in taken do
		existing = t

		s, e = string.find(t, name_regex)
		if (s == nil or e == nil) then
			goto continue
		end

		existing_name = string.sub(t, s, e)
		is, ie = string.find(existing_name, id_regex)
		if (is == nil or ie == nil) then
			goto continue
		end
		existing_id = string.sub(existing_name, is, ie)

		local id = tonumber(existing_id)
		if (next == nil) then
			next = id
		elseif (id > next) then
			next = id
		end



	    ::continue::
	end

	local pre = string.sub(existing, 0, s-1)
	local next_id = next + 1
	local path =  pre .. next_id .. "-" .. name .. ".md"
	print(path)
	io.output(path)
	io.write("# " .. name)
	io.flush()
	vim.cmd("e " .. path)

end

return {newShardFile = NewShardFile}
