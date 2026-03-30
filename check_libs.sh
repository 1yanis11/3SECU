#!/bin/bash

echo "🔍 Debug: liste des fichiers"
ls -R

FORBIDDEN_LIBS=("unistd.h" "sys/types.h" "sys/wait.h")

for lib in "${FORBIDDEN_LIBS[@]}"; do
    echo "🔍 Checking $lib..."
    grep -rn "$lib" . || echo "$lib not found"
done

echo "✅ Done"
