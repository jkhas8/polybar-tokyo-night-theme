# Tokyo Night Polybar Configuration

A beautiful Polybar configuration with Tokyo Night theme and i3status-inspired functionality, enhanced with rich icons.

## Features

- 🎨 **Tokyo Night Color Scheme** - Beautiful dark theme with vibrant accents
- 🚀 **Multiple Bar Styles** - Choose from various pre-configured layouts
- 🎯 **i3status Functionality** - All the essential system monitoring modules
- 🎭 **Rich Icons** - Beautiful Nerd Font icons throughout
- 📱 **Application Launchers** - Quick access to your favorite apps
- 🔧 **Modular Design** - Easy to customize and extend

## Bar Styles

### 1. Main (Default)
Standard bar with all essential modules and system tray.
```bash
~/.config/polybar/tokyo-night/launch.sh main
```

### 2. Icons
Icon-rich bar with application launchers and enhanced visual indicators.
```bash
~/.config/polybar/tokyo-night/launch.sh icons
```

### 3. Dock
macOS-style dock at the bottom with application launchers.
```bash
~/.config/polybar/tokyo-night/launch.sh dock
```

### 4. Status
Minimal status bar with only essential information.
```bash
~/.config/polybar/tokyo-night/launch.sh status
```

### 5. Workspaces
Workspace-only bar, perfect as a secondary bar.
```bash
~/.config/polybar/tokyo-night/launch.sh workspaces
```

### 6. Dual
Both top and bottom bars for maximum information.
```bash
~/.config/polybar/tokyo-night/launch.sh dual
```

### 7. Minimal
Simplified version with core modules only.
```bash
~/.config/polybar/tokyo-night/launch.sh minimal
```

## Workspace Icons

The i3 module includes icons for each workspace:

- Workspace 1:  (Terminal)
- Workspace 2:  (Firefox/Web)
- Workspace 3:  (Code/Development)
- Workspace 4:  (Files)
- Workspace 5:  (Media)
- Workspace 6:  (Documents)
- Workspace 7:  (Communication)
- Workspace 8:  (System)
- Workspace 9:  (Games)
- Workspace 10:  (Settings)

## Modules Included

### System Monitoring
- **CPU** - Usage percentage with thermal icons
- **Memory** - RAM usage with bar indicator
- **Temperature** - CPU temperature with warning states
- **Filesystem** - Disk usage
- **Battery** - Charging status with animations
- **Network** - Ethernet/WiFi with speed indicators

### User Interface
- **i3 Workspaces** - With icons and click support
- **Window Title** - Current focused window
- **Date/Time** - Customizable format
- **Volume** - PulseAudio control with mute detection
- **Keyboard Layout** - With caps lock indicator
- **System Tray** - For background applications

### Extras
- **App Launchers** - Quick launch browsers, terminals, editors
- **Updates** - Package update notifications
- **Trash** - Trash bin status
- **Bluetooth** - Connection status
- **Notifications** - GitHub, Reddit alerts
- **Power Menu** - Shutdown/reboot/suspend options

## Installation

1. Install required fonts:
```bash
# Nerd Fonts (JetBrainsMono recommended)
yay -S ttf-jetbrains-mono-nerd

# Font Awesome
yay -S ttf-font-awesome

# Material Design Icons (optional)
yay -S ttf-material-design-icons
```

2. Add to i3 config:
```bash
# In ~/.config/i3/config
exec_always --no-startup-id ~/.config/polybar/tokyo-night/launch.sh icons
```

3. Or launch manually:
```bash
~/.config/polybar/tokyo-night/launch.sh [style]
```

## Customization

### Colors
Edit `colors.ini` to change the Tokyo Night palette or create your own theme.

### Modules
- `modules.ini` - Core i3status-like modules
- `modules-icons.ini` - Icon-enhanced modules and launchers

### Bar Configuration
- `config.ini` - Standard bar configurations
- `config-icons.ini` - Icon-rich bar configurations

## Dependencies

- polybar
- i3-wm
- Nerd Fonts
- Font Awesome
- rofi (for launcher menu)
- PulseAudio/PipeWire
- Python 3 (for some scripts)

## Tips

- Use `polybar-msg cmd restart` to reload without killing the bar
- Check `/tmp/polybar.log` for debugging
- Customize workspace icons in the i3 module section
- Add your own scripts in the `scripts/` directory

## Tokyo Night Colors

```ini
background = #1a1b26
foreground = #c0caf5
blue = #7aa2f7
cyan = #7dcfff
magenta = #bb9af7
purple = #9d7cd8
orange = #ff9e64
yellow = #e0af68
green = #9ece6a
red = #f7768e
```

Enjoy your beautiful Tokyo Night Polybar! 🌙