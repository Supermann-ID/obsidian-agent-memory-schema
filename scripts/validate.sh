#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "== Validate JSON syntax =="

json_files=(
  "$repo_root/schemas/memory-entry.schema.json"
  "$repo_root/schemas/project-state.schema.json"
  "$repo_root/examples/memory-entry.json"
  "$repo_root/examples/project-state.json"
)

for file in "${json_files[@]}"; do
  python3 -m json.tool "$file" >/dev/null
  echo "[ok] $file"
done

echo
echo "== Validate required template files =="

required_files=(
  "$repo_root/templates/Agent Shared/user-profile.md"
  "$repo_root/templates/Agent Shared/working-context.md"
  "$repo_root/templates/Agent Shared/project-state.md"
  "$repo_root/templates/Agent Shared/decision-log.md"
  "$repo_root/templates/Agent Shared/daily/YYYY-MM-DD.md"
  "$repo_root/templates/Agent Shared/learnings/LEARNINGS.md"
  "$repo_root/templates/Agent Shared/learnings/ERRORS.md"
  "$repo_root/templates/Agent Shared/learnings/FEATURE_REQUESTS.md"
)

for file in "${required_files[@]}"; do
  test -s "$file"
  echo "[ok] $file"
done

echo
echo "== Check examples include pattern keys =="

grep -q '"patternKey"' "$repo_root/examples/memory-entry.json"
grep -q 'Pattern-Key' "$repo_root/templates/Agent Shared/learnings/LEARNINGS.md"
grep -q 'Pattern-Key' "$repo_root/templates/Agent Shared/learnings/ERRORS.md"
echo "[ok] pattern key examples present"

echo
echo "Validation complete."
