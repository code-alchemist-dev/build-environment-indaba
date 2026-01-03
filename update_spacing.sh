#!/bin/bash

# Function to add spacing variables to :root if not already present
add_spacing_vars() {
  local file=$1
  
  # Check if spacing variables already exist
  if grep -q "var(--xs)" "$file"; then
    echo "✓ $file already has spacing variables"
    return
  fi
  
  # Add spacing variables to :root
  perl -i -0pe 's/(:root\s*\{[^}]*?--shadow[^}]*?;)/$1\n\n      \/* Uniform Spacing Scale *\/\n      --xs: 0.25rem;    \/* 4px *\/\n      --sm: 0.5rem;     \/* 8px *\/\n      --md: 1rem;       \/* 16px *\/\n      --lg: 1.5rem;     \/* 24px *\/\n      --xl: 2rem;       \/* 32px *\/\n      --xxl: 3rem;      \/* 48px *\/\n      --xxxl: 4rem;     \/* 64px *\//' "$file"
  
  echo "✓ Added spacing variables to $file"
}

# Add spacing variables to all HTML files
for file in *.html packages/*.html; do
  if [ -f "$file" ]; then
    add_spacing_vars "$file"
  fi
done

echo "Done!"
