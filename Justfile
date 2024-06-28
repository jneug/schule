set positional-arguments

root := justfile_directory()
OUTPUT_PATH := root + "/pdf"

export TYPST_ROOT := root

[private]
default:
    @just --list --unsorted

compile +FILES:
    fish scripts/compile.fish "$@" -o "{{OUTPUT_PATH}}"

p4upa3 FILE:
    just compile "{{FILE}}"
    typ="{{FILE}}"; pdf="{{OUTPUT_PATH}}/${typ%.typ}.pdf"; out="{{OUTPUT_PATH}}/${typ%.typ}-p4upA3.pdf"; psnup -pa3 -4 "$pdf" "$out"

p2upa4 FILE:
    just compile "{{FILE}}"
    typ="{{FILE}}"; pdf="{{OUTPUT_PATH}}/${typ%.typ}.pdf"; out="{{OUTPUT_PATH}}/${typ%.typ}-p4upA4.pdf"; psnup -pa4 -2 "$pdf" "$out"

p4upa4 FILE:
    just compile "{{FILE}}"
    typ="{{FILE}}"; pdf="{{OUTPUT_PATH}}/${typ%.typ}.pdf"; out="{{OUTPUT_PATH}}/${typ%.typ}-p4upA4.pdf"; psnup -pa4 -4 "$pdf" "$out"
