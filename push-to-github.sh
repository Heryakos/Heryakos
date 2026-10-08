#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────
#  push-to-github.sh
#  Pushes the Heryakos profile README to GitHub.
#
#  USAGE:
#    bash push-to-github.sh
#
#  PRE-REQUISITES:
#    • You must be authenticated with GitHub (token or SSH key).
#    • The remote repository https://github.com/Heryakos/Heryakos
#      must already exist and be set to PUBLIC.
# ─────────────────────────────────────────────────────────────

set -e   # Exit immediately on any error

echo "🔗  Adding GitHub remote..."
git remote add origin https://github.com/Heryakos/Heryakos.git

echo "🌿  Renaming branch to 'main' (GitHub's default)..."
git branch -M main

echo "🚀  Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅  Done! Visit your profile at: https://github.com/Heryakos"
