# MJ-Ahmad Graphical Module

This module renders ethical, child-readable ASCII graphs using PowerShell. It is designed for legacy stewardship, audit-safe visualization, and constitutional clarity.

## Functions

### `Show-Graph.ps1`
- Renders a vertical bar graph from an array of integers.
- Accepts optional title.
- No external dependencies.

### `Render-LegacyGraph.ps1`
- Wrapper around `Show-Graph`.
- Displays title in terminal.
- Includes fallback if `Show-Graph` is unavailable.

## Example

```powershell
Render-LegacyGraph -Points @(1, 4, 9, 16) -Type "Line" -Title "Perfect Squares"

