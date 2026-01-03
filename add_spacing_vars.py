#!/usr/bin/env python3
import re
import os

spacing_vars = """
      /* Uniform Spacing Scale */
      --xs: 0.25rem;    /* 4px */
      --sm: 0.5rem;     /* 8px */
      --md: 1rem;       /* 16px */
      --lg: 1.5rem;     /* 24px */
      --xl: 2rem;       /* 32px */
      --xxl: 3rem;      /* 48px */
      --xxxl: 4rem;     /* 64px */"""

files = []
for root, dirs, filenames in os.walk('.'):
    for fname in filenames:
        if fname.endswith('.html'):
            files.append(os.path.join(root, fname))

for filepath in files:
    with open(filepath, 'r') as f:
        content = f.read()
    
    # Check if already has spacing vars
    if '--xs:' in content:
        print(f'✓ {filepath} already has spacing variables')
        continue
    
    # Find :root { and add vars before the closing }
    pattern = r'(:root\s*\{[^}]*?)(--shadow[^;]*;)'
    if re.search(pattern, content):
        new_content = re.sub(
            pattern,
            r'\1\2' + spacing_vars,
            content
        )
        with open(filepath, 'w') as f:
            f.write(new_content)
        print(f'✓ Added spacing variables to {filepath}')
    else:
        print(f'✗ Could not find :root in {filepath}')

print('Done!')
