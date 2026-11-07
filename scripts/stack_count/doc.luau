-- MEASUREMENT ONLY: a ~40 KB markdown document.
local parts = {}
for i = 1, 170 do
	table.insert(parts, "## Section " .. i)
	table.insert(
		parts,
		"A paragraph with **bold**, *italic* and `code` runs, and a [link](https://example.com) " .. i .. "."
	)
	table.insert(parts, "- one item\n- another item\n  - nested item\n  - and one more\n- last")
	table.insert(parts, "> a quote\n> on two lines")
	table.insert(parts, "```lua\nlocal x = " .. i .. "\nreturn x * 2\n```")
end
local text = table.concat(parts, "\n\n")
print("DOC bytes=" .. #text)
return ui.scroll { w_full = true, h_full = true, ui.markdown_view { text, w = 720 } }
