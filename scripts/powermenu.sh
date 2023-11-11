#!/bin/bash

options="❌ Shutdown\n🔄 Reboot\n🚪 Exit"
selected_option=$(echo -e "$options" | dmenu -i -p "Choose an option:")

case "$selected_option" in
  "❌ Shutdown")
    systemctl poweroff
    ;;
  "🔄 Reboot")
    systemctl reboot
    ;;
  "🚪 Exit")
    pkill dwm
    ;;
  *)
    echo "Opção inválida"
    ;;
esac

