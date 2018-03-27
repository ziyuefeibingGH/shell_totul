#!/bin/bash
ls my.file $0 2> file2.err >&2
ls my.file $0 1> file1.err 2>&1
ls my.file $0 1>> file1.err 2>/dev/null

