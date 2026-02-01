#!/bin/bash

ai_name="llama3.1"

ollama serve > /dev/null 2>&1 & disown
figlet -w 200 "Now Running: $ai_name" | lolcat
ollama run "$ai_name"
killall ollama
