# -*- coding: utf-8 -*-

import os
import re


def process_file(filename):
    regex = re.compile(r"#\+attr_html:\s+:width\s+(\d+)px")
    widths = {
        300: 7,
        500: 11,
    }
    processed = []
    with open(filename, mode="r") as f:
        for line in f:
            line = line.rstrip()
            match = re.search(regex, line)
            if match:
                width = int(match.group(1))
                processed += ["#+attr_latex: :width {}cm".format(widths[width])]
            processed += [line]
        if processed[-1] != "":
            processed += [""]

    with open(filename, mode="w") as f:
        f.writelines(f"{line}\n" for line in processed)  # type: ignore


root = "/Users/Yomisuko/org/meguriau/source"
for dirpath, dirnames, filenames in os.walk(root):
    if dirpath == root:
        for filename in filenames:
            if filename.endswith("org"):
                filename = os.path.join(dirpath, filename)
                process_file(filename)
