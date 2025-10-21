# Step 1: Create artifact.schema.json under metadata/schemas

$base = "mj-ahmad/audit-metadata-hub/metadata/schemas"
New-Item -Path $base -ItemType Directory -Force

$schemaPath = "$base/artifact.schema.json"

$schemaContent = @'
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "title": "Artifact Metadata Schema",
  "type": "object",
  "required": ["id","title","steward","created","checksum","schema_version","visibility"],
  "properties": {
    "id": {"type":"string"},
    "title": {"type":"string"},
    "steward": {"type":"string"},
    "created": {"type":"string","format":"date-time"},
    "modified": {"type":"string","format":"date-time"},
    "version": {"type":"string"},
    "checksum": {"type":"string"},
    "provenance": {"type":"array","items":{"type":"string"}},
    "visibility": {"type":"string","enum":["public","restricted","private"]},
    "tags": {"type":"array","items":{"type":"string"}},
    "license": {"type":"string"},
    "schema_version": {"type":"string"}
  }
}
'@

Set-Content -Path $schemaPath -Value $schemaContent
Write-Host "✅ artifact.schema.json created at $schemaPath"


