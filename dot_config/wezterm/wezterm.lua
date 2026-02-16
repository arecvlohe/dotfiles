local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme_dirs = { '~/.config/wezterm/colors' }

config.front_end = 'WebGpu'
config.webgpu_force_fallback_adapter = false

config.color_scheme = 'nightfox'

config.font_size = 16
config.font_rules = {
  -- Bold not Italic
  { intensity='Bold', italic = false, font = wezterm.font({ family = "MonoLisa Adam", weight = "Bold" }),  },
  -- Bold Italic
  { intensity='Bold', italic = true, font = wezterm.font({ family = "MonoLisa Adam", weight = "Bold", italic = true }),  },
  -- Normal not Italic
  { intensity='Normal', italic = false, font = wezterm.font({ family = "MonoLisa Adam", weight = "Regular" }),  },
  -- Normal Italic
  { intensity='Normal', italic = true, font = wezterm.font({ family = "MonoLisa Adam", weight = "Regular", italic = true }),  },
  -- Half not Italic
  { intensity='Half', italic = false, font = wezterm.font({ family = "MonoLisa Adam", weight = "Light" }),  },
  -- Half Italic
  { intensity='Half', italic = true, font = wezterm.font({ family = "MonoLisa Adam", weight = "Light", italic = true }),  },
}

config.treat_left_ctrlalt_as_altgr = true

config.hide_tab_bar_if_only_one_tab = true

return config
