param([string]$fajl)

pandoc $fajl -s -o temp.md
pandoc temp.md -s -o $fajl

Remove-Item temp.md