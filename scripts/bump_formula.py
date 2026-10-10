#!/usr/bin/env python3
"""Point Formula/tako.rb at a tako-cli release.

Usage: scripts/bump_formula.py v0.12.2

Reads the release's checksums.txt and rewrites the formula's version, asset
URLs, and sha256 values. Exits non-zero if any formula asset is missing from
the release, so a partial release never produces a broken formula.
"""

import pathlib
import re
import sys
import urllib.request

REPO = "redentordev/tako-cli"
FORMULA = pathlib.Path(__file__).resolve().parent.parent / "Formula" / "tako.rb"


def fetch_checksums(tag: str) -> dict[str, str]:
    url = f"https://github.com/{REPO}/releases/download/{tag}/checksums.txt"
    with urllib.request.urlopen(url, timeout=30) as response:
        text = response.read().decode()
    sums = {}
    for line in text.splitlines():
        parts = line.split()
        if len(parts) == 2 and re.fullmatch(r"[0-9a-f]{64}", parts[0]):
            sums[parts[1].lstrip("*")] = parts[0]
    return sums


def bump(formula: str, tag: str, sums: dict[str, str]) -> str:
    version = tag.removeprefix("v")
    missing = []

    def replace_asset(match: re.Match) -> str:
        asset = match.group("asset")
        if asset not in sums:
            missing.append(asset)
            return match.group(0)
        return (
            f'url "https://github.com/{REPO}/releases/download/{tag}/{asset}"'
            f'{match.group("mid")}sha256 "{sums[asset]}"'
        )

    formula, count = re.subn(
        rf'url "https://github\.com/{re.escape(REPO)}/releases/download/v[^/"]+/(?P<asset>[^"]+)"'
        r'(?P<mid>.*?)sha256 "[0-9a-f]{64}"',
        replace_asset,
        formula,
        flags=re.S,
    )
    if count == 0:
        sys.exit("no release asset URLs found in formula")
    if missing:
        sys.exit(f"release {tag} is missing assets: {', '.join(missing)}")

    formula = re.sub(r'^(\s*version )"[^"]+"', rf'\g<1>"{version}"', formula, count=1, flags=re.M)
    formula = re.sub(r"Tako CLI v[0-9][^\"\s]*", f"Tako CLI {tag}", formula)
    return formula


def main() -> None:
    if len(sys.argv) != 2 or not re.fullmatch(r"v\d+\.\d+\.\d+", sys.argv[1]):
        sys.exit("usage: bump_formula.py vX.Y.Z")
    tag = sys.argv[1]
    original = FORMULA.read_text()
    updated = bump(original, tag, fetch_checksums(tag))
    if updated == original:
        print(f"Formula already at {tag}")
        return
    FORMULA.write_text(updated)
    print(f"Formula updated to {tag}")


if __name__ == "__main__":
    main()
