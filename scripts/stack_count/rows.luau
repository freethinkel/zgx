-- MEASUREMENT ONLY: 1,000 rows mounted at once.
local rows = table.create(1000)
for i = 1, 1000 do
	rows[i] = i
end
return ui.scroll {
	w_full = true,
	h_full = true,
	ui.column {
		ui.each(rows, function(i) -- zgx-lint: allow(each_large)
			return ui.row { gap = 8, ui.text { "Row " .. i }, ui.text { "detail " .. i * 7 } }
		end),
	},
}
