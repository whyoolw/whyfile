#!/bin/bash

# Переключение значения параметра
if hyprctl keyword '$LAPTOP_KB_ENABLED' | grep -q 'true'; then
    hyprctl keyword '$LAPTOP_KB_ENABLED' "false" -r
else
    hyprctl keyword '$LAPTOP_KB_ENABLED' "true" -r
fi

