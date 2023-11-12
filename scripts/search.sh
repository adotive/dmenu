#!/bin/bash

# Capture user input using dmenu
option=$(echo -e "🔍 Search on Google\n🎬 Open YouTube\n📦 Open AUR\n🐦 Open Twitter\n🔐 Open Bitwarden\n📱 Open WhatsApp\n💬 Chat ChatGPT" | dmenu -p "Choose an option:")

# Check if the user canceled the selection
if [ -z "$option" ]; then
    exit 0
fi

# Check the chosen option
case "$option" in
    "🔍 Search on Google")
        # Capture the search query
        query=$(echo "" | dmenu -p "Enter the search query:")

        # Check if the user canceled the selection
        if [ -z "$query" ]; then
            exit 0
        fi

        # Build the Google search URL
        search_url="https://www.google.com/search?q=${query// /+}"

        # Open the browser with the search URL
        firefox "$search_url" &
        ;;
    "🎬 Open YouTube")
        # Open the browser on YouTube
        firefox "https://www.youtube.com" &
        ;;
    "📦 Open AUR")
        # Open the browser on AUR
        firefox "https://aur.archlinux.org/" &
        ;;
    "🐦 Open Twitter")
        # Open the browser on Twitter
        firefox "https://twitter.com" &
        ;;
    "🔐 Open Bitwarden")
        # Open the browser on Bitwarden
        firefox "https://bitwarden.com" &
        ;;
    "📱 Open WhatsApp")
        # Open the browser on WhatsApp
        firefox "https://web.whatsapp.com/" &
        ;;
    "💬 Chat with ChatGPT")
        # Open the ChatGPT page
        firefox "https://www.openai.com/chatgpt" &
        ;;
    *)
        exit 0
        ;;
esac

