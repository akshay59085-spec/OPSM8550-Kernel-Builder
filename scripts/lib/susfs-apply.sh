#!/usr/bin/env bash

export KSU_KERNEL_DIR="${KSU_KERNEL_DIR:-drivers/kernelsu}"
export KSU_SUSFS_PATCH_LEVEL="${KSU_SUSFS_PATCH_LEVEL:-0}"

apply_susfs_task_mmu_fix() { return 0; }
patch_susfs_kernelsu_layout() { return 0; }
patch_kernelsu_for_susfs() { return 0; }
patch_resukisu_susfs_runtime_compat() { return 0; }
apply_susfs_full() { return 0; }
