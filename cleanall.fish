set COMPILE_PATH Informatik Mathematik Sonstiges
set BASEDIR $PWD

for d in $COMPILE_PATH;
	for p in (find ./$d -type d);
		echo "Cleaning $p.."
		cd $p
		latexmk -c &> /dev/null
		cd $BASEDIR
		echo " done."
	end
end

echo "Cleaning xmpi files"
find . -name "*.xmpi" -exec rm -rf {} \;
echo "All done"
