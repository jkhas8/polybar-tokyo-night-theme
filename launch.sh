#!/usr/bin/env bash

# Tokyo Night Polybar Launch Script

# Get the bar style from argument, default to "main"
BAR_STYLE=${1:-main}

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar using Tokyo Night config
echo "---" | tee -a /tmp/polybar.log
echo "Launching Tokyo Night Polybar with style: $BAR_STYLE" | tee -a /tmp/polybar.log

case $BAR_STYLE in
    "icons")
        # Launch icon-rich bar
        polybar icons -c ~/.config/polybar/tokyo-night/config-icons.ini 2>&1 | tee -a /tmp/polybar.log & disown
        ;;
    "dock")
        # Launch dock-style bar
        polybar dock -c ~/.config/polybar/tokyo-night/config-icons.ini 2>&1 | tee -a /tmp/polybar.log & disown
        ;;
    "status")
        # Launch minimal status bar
        polybar status -c ~/.config/polybar/tokyo-night/config-icons.ini 2>&1 | tee -a /tmp/polybar.log & disown
        ;;
    "workspaces")
        # Launch workspace-only bar
        polybar workspaces -c ~/.config/polybar/tokyo-night/config-icons.ini 2>&1 | tee -a /tmp/polybar.log & disown
        ;;
    "dual")
        # Launch top and bottom bars
        polybar top -c ~/.config/polybar/tokyo-night/config.ini 2>&1 | tee -a /tmp/polybar.log & disown
        polybar bottom -c ~/.config/polybar/tokyo-night/config.ini 2>&1 | tee -a /tmp/polybar.log & disown
        ;;
    "minimal")
        # Launch minimal bar
        polybar minimal -c ~/.config/polybar/tokyo-night/config.ini 2>&1 | tee -a /tmp/polybar.log & disown
        ;;
    *)
        # Launch main bar (default)
        polybar main -c ~/.config/polybar/tokyo-night/config.ini 2>&1 | tee -a /tmp/polybar.log & disown
        ;;
esac

echo "Tokyo Night Polybar launched with style: $BAR_STYLE"