import colorsys

INPUT_FILE = "colors.txt"
SATURATION_FACTOR = 0.4  # 0.0 (Gray) to 1.0 (Original)
DIM_FACTOR = 0.25  # 0.0 (Black) to 1.0 (Original)


def desaturate_and_dim(hex_color):
    clean_hex = hex_color.strip().lstrip("#")

    if len(clean_hex) != 6:
        return hex_color.strip()

    r, g, b = tuple(int(clean_hex[i : i + 2], 16) / 255.0 for i in (0, 2, 4))

    h, l, s = colorsys.rgb_to_hls(r, g, b)

    new_l = max(0, min(1, l * DIM_FACTOR))
    new_s = max(0, min(1, s * SATURATION_FACTOR))

    r, g, b = colorsys.hls_to_rgb(h, new_l, new_s)
    return "#{:02x}{:02x}{:02x}".format(int(r * 255), int(g * 255), int(b * 255))


try:
    with open(INPUT_FILE, "r") as f:
        for line in f:
            if line.strip():
                original = line.strip()
                processed = desaturate_and_dim(original)
                print(f"{original} -> {processed}")

except FileNotFoundError:
    print(f"Error: Could not find '{INPUT_FILE}'. Please create it first.")
