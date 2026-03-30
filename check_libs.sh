#!/bin/bash

FORBIDDEN_LIBS=("unistd.h" "sys/types.h" "sys/wait.h")

for lib in "${FORBIDDEN_LIBS[@]}"; do
    if grep -r "$lib" .; then
        echo "❌ Forbidden library detected: $lib"
        exit 1
    fi
done

echo "✅ All libraries are allowed"
exit 0