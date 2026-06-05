from pathlib import Path

readme_path = Path("README.md")
block_path = Path("tools/README_DIRECT_ACCESS.md")

text = readme_path.read_text()
block = block_path.read_text()

start = "<!-- DIRECT_ACCESS_START -->"
end = "<!-- DIRECT_ACCESS_END -->"

if start in text and end in text:
    before = text.split(start)[0]
    after = text.split(end)[1]
    updated = before + block + after
elif "</div>" in text:
    updated = text.replace("</div>", "</div>\n\n" + block, 1)
else:
    updated = block + "\n\n" + text

readme_path.write_text(updated)
print("README.md updated with Direct Access section.")
