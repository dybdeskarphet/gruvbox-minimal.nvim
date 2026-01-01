local M = {}

function M.get(contrast, theme)
	local base_colors = {
		-- FG and BG colors
		base_00 = "#11110f",
		base_01 = "#221f1d",
		base_02 = "#2d2c2b",
		base_03 = "#32302f",
		base_04 = "#3c3836",
		base_05 = "#504945",
		base_06 = "#665c54",
		base_07 = "#7c6f64",
		base_08 = "#928374",
		base_09 = "#a89984",
		base_10 = "#bdae93",
		base_11 = "#d5c4a1",
		base_12 = "#ebdbb2",
		base_13 = "#f2e5bc",
		base_14 = "#fbf1c7",
		base_15 = "#f9f5d7",
	}

	local result = {}

	if theme == "dark" then
		if contrast == "low" then
			result = {
				red = "#ea6962",
				orange = "#e78a4e",
				yellow = "#d8a657",
				green = "#a9b665",
				cyan = "#89b482",
				blue = "#7daea3",
				magenta = "#d3869b",
				bg_red = "#402a27",
				bg_orange = "#3f2f24",
				bg_yellow = "#3d3325",
				bg_green = "#363527",
				bg_cyan = "#31352c",
				bg_blue = "#2f3431",
				bg_magenta = "#3c2e2f",
			}
		elseif contrast == "high" then
			result = {
				red = "#f2594b",
				orange = "#f28534",
				yellow = "#e9b143",
				green = "#b0b846",
				cyan = "#8bba7f",
				blue = "#80aa9e",
				magenta = "#d3869b",
				bg_red = "#412723",
				bg_orange = "#412e20",
				bg_yellow = "#3f3422",
				bg_green = "#373523",
				bg_cyan = "#31362b",
				bg_blue = "#303330",
				bg_magenta = "#3c2e2f",
			}
		else
			result = { error = "Unknown contrast value." }
		end
	elseif theme == "light" then
		if contrast == "low" then
			result = {
				red = "#c14a4a",
				orange = "#c35e0a",
				yellow = "#b47109",
				green = "#6c782e",
				cyan = "#4c7a5d",
				blue = "#45707a",
				magenta = "#945e80",
				bg_red = "#f2d7b4",
				bg_orange = "#f2daaa",
				bg_yellow = "#f0ddaa",
				bg_green = "#e5deb0",
				bg_cyan = "#e0dfb7",
				bg_blue = "#dfddbb",
				bg_magenta = "#ebdabc",
			}
		elseif contrast == "high" then
			result = {
				red = "#af2528",
				orange = "#b94c07",
				yellow = "#b4730e",
				green = "#72761e",
				cyan = "#477a5b",
				blue = "#266b79",
				magenta = "#924f79",
				bg_red = "#f2d7b4",
				bg_orange = "#f2daaa",
				bg_yellow = "#f0ddaa",
				bg_green = "#e5deb0",
				bg_cyan = "#e0dfb7",
				bg_blue = "#dfddbb",
				bg_magenta = "#ebdabc",
			}
		else
			result = { error = "Unknown contrast value." }
		end
	else
		result = { error = "Unknown theme value." }
	end

	for i = 0, vim.tbl_count(base_colors) do
		local key = string.format("base_%02d", i)
		local target_index = (theme == "light") and (15 - i) or i
		local target_key = string.format("base_%02d", target_index)
		result[key] = base_colors[target_key]
	end

	return result
end

return M
