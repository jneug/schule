# TODO Add psnup support

# Utilities
function cecho -d "Colorful echo" -w echo
    argparse -i 'b/background=' 'c/color=' -- $argv

    set -f fgclr brgreen
    if set -q _flag_c
        set -f fgclr $_flag_c
    end
    set -f bgclr normal
    if set -q _flag_b
        set -f bgclr $_flag_b
    end

    set_color $fgclr -b $bgclr
    echo $argv
    set_color normal -b normal
end


# Settings
set OUTPUT_PATH pdf

# Parse arguments
argparse -N 1 'o/out=' 't/theme=' 'v/varis=' 'nup=' -- $argv

# Prepare output paths
set -f cwd (pwd)
set -f out $OUTPUT_PATH
if set -q _flag_o
    set -f out "$_flag_o"
end

for typ_file in $argv
    set -f file_path (string replace $cwd"/" "" (path resolve $typ_file))
    set -f out_path (path resolve $out"/"(path change-extension pdf $file_path))

    # Query document metadata from Typst file
    set -f doc (typst query "$file_path" "<schule-document>" | jq '.[0]["value"]')

    # Check metadata for preferred theme
    set -f theme default
    if set -q _flag_t
        set -f theme $_flag_t
    else if type -q jq
        set -f theme (echo $doc | jq '.["preferred-theme"]' -r)
        if test $theme = null
            set -f theme default
        end
    end

    # Check metadata for variant information
    set -f variants
    if set -q _flag_v
        set -f variants (split "" $_flag_v)
    else if type -q jq
        set -f variants (echo $doc | jq '.["variants"]' -c)
        if test $variants = null
            set -f variants
        else
            set -f variants (echo $variants | jq '.[]' -r)
        end
    end

    # Create output dir
    mkdir -p (path dirname $out_path)

    # Compile file(s)
    if test (count $variants) -eq 0
        cecho -c bryellow "Compiling $file_path with theme $theme"
        typst c --input "theme=$theme" "$file_path" "$out_path"
        cecho -c brgreen "- " $out_path
    else
        cecho -c bryellow "Compiling $file_path with theme $theme into variants $variants:"
        for v in $variants
            set -f out_path (string replace ".pdf" "" $out_path)"-$v.pdf"

            typst c --input "theme=$theme" --input "variant=$v" "$file_path" "$out_path"
            cecho -c brgreen - $out_path
        end
    end
end
