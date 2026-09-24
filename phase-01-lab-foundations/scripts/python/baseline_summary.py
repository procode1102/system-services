#!/usr/bin/env python3
from pathlib import Path

# 
BASE_DIR = Path(__file__).resolve().parents[2]

#
BASELINES_DIR = BASE_DIR / "baseline"

def counting_files(directory: Path) -> int:
    return len([p for p in directory.rglob("*") if p.is_file()])

def list_files(directory: Path):
    return sorted([p for p in directory.rglob("*") if p.is_file()])

def main():
    print("Phase 1 Baseline Summary")
    print("=" * 32)

    if not BASELINES_DIR.exists():
        print(f"Missing baselines directory: {BASELINES_DIR}")
        return

    mac_dir = BASELINES_DIR / "mac"
    linux_dir = BASELINES_DIR / "linux-vm"

    print(f"Mac baseline files: {counting_files(mac_dir)}")
    print(f"Linux VM baseline files: {counting_files(linux_dir)}")
    print()

    print("Files found:")
    for file_path in list_files(BASELINES_DIR):
        relative = file_path.relative_to(BASE_DIR)
        size = file_path.stat().st_size
        print(f"- {relative} ({size} bytes)")

if __name__ == "__main__":
    main()

