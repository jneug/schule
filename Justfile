root := justfile_directory()
pdf_path := root + "pdf"
export TYPST_ROOT := root

[private]
default:
    @just --list --unsorted

compile file:
    fish scripts/compile.fish "{{ file }}" -o "{{ pdf_path }}"

publish:
    echo "nyi"

p4upa3 file:
    just compile {{ file }}
    typ="{{ file }}"; pdf="{{ pdf_path }}/${typ%.typ}.pdf"; out="{{ pdf_path }}/${typ%.typ}-p4upA3.pdf"; psnup -pa3 -4 "$pdf" "$out"

p2upa4 file:
    just compile {{ file }}
    typ="{{ file }}"; pdf="{{ pdf_path }}/${typ%.typ}.pdf"; out="{{ pdf_path }}/${typ%.typ}-p4upA4.pdf"; psnup -pa4 -2 "$pdf" "$out"

p4upa4 file:
    just compile {{ file }}
    typ="{{ file }}"; pdf="{{ pdf_path }}/${typ%.typ}.pdf"; out="{{ pdf_path }}/${typ%.typ}-p4upA4.pdf"; psnup -pa4 -4 "$pdf" "$out"
