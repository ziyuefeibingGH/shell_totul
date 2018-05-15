#!/bin/bash
dd if=/dev/zero of=minifs bs=1024 count=1024

file minifs

mkfs.ext2 minifs

file minifs

mkdir mnt_minifs
mount minifs ~/mnt_minifs -o loop
ls mnt_minifs
