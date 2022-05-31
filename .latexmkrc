$pdf_mode = 1;
$pdflatex = 'pdflatex -synctex=1 --shell-escape %O %S';

$pdf_previewer = 'open -a PDF\ Expert';

@default_excluded_files = ("*.inhalt.tex");

@generated_exts = (@generated_exts, 'synctex.gz', '%R-*.xsim');
@generated_exts = (@generated_exts, '{%R,cc-by-nc-sa-4}.xmpi', '{%R,comment}.cut');
@generated_exts = (@generated_exts, 'tkzfct.gnuplot', 'tkzfct.table', 'tkzfonct.gnuplot', 'tkzfonct.table', 'code');
@generated_exts = (@generated_exts, '_minted-%R', );

# $clean_ext = " xmpi _minted-%R cc-by-nc-sa-4.xmpi cut";

add_cus_dep( "uxf", "pdf", 0, "compileumlet" );
sub compileumlet {
	system("java -jar /Users/jneug/Projekte/Tools/Umlet/umlet.jar -action=convert -format=pdf -filename=\"$_[0].uxf\""); }

add_cus_dep( "qr", "png", 0, "compileqr" );
sub compileqr {
	system("cat \"$_[0].qr\" | qrencode -m 0 -o \"$_[0].png\""); }
