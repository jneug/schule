set COMPILE_PATH Informatik Mathematik Sonstiges
set BASEDIR $PWD

for p in $COMPILE_PATH;
	for t in (find ./$p -name '*.tex');
		echo "Working on $t.."
		if latexmk -pdf -silent -cd "$t" &> /dev/null
			#cd (dirname $t)
			#latexmk -c &> /dev/null
			#cd $BASEDIR
			echo " done."
		else
			set -l LOGFILE (string replace -r "\.tex\$" ".log" $t)
			echo "Error in $t" >&2
			echo " see log in $LOGFILE" >&2
			# echo " ------   Excerp    ------ " >&2
			# tail -n 8 $LOGFILE >&2
			# echo " ------ End Excerpt ------ " >&2
		end
	end
end
echo "All done"
