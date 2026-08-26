#!/usr/bin/env bash

# Global variables defining to satisfy strict bash checks (set -u)
export KSU_KERNEL_DIR="${KSU_KERNEL_DIR:-}"
export KSU_SUSFS_PATCH_LEVEL="${KSU_SUSFS_PATCH_LEVEL:-0}"

apply_susfs_task_mmu_fix() {
  return 0
}

patch_susfs_kernelsu_layout() {
  return 0
}

patch_kernelsu_for_susfs() {
  local ksu_repo_dir="${1:-}"
  local ksu_dir="${2:-}"
  
  if [ -n "$ksu_dir" ]; then
    KSU_KERNEL_DIR="$ksu_dir"
  else
    KSU_KERNEL_DIR="drivers/kernelsu"
  fi
  export KSU_KERNEL_DIR
  return 0
}

patch_resukisu_susfs_runtime_compat() {
  return 0
}

apply_susfs_full() {
  echo "[+] Skipping susfs patching completely for ReSukiSU + KPM build..."
  
  # Ensure variables are set before returning
  if [ -z "${KSU_KERNEL_DIR:-}" ]; then
    export KSU_KERNEL_DIR="drivers/kernelsu"
  fi
  
  return 0
}
