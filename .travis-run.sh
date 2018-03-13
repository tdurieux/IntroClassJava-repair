cd IntroClassJava/dataset;
cd $BUG;
for D in *; do
	if [ -d "${D}" ]; then
		cwd=$(pwd)
		cd ${D};

		mvn test || true;
		
		mvn fr.inria.gforge.spirals:repair-maven-plugin:nopol;
		d=$HOME/build/tdurieux/IntroClassJava-repair/results/$BUG/${D}/
		test -d "$d" || mkdir -p "$d" && cp -Rf target/nopol/output.json "$d"

		mvn fr.inria.gforge.spirals:repair-maven-plugin:jGenProg;
		d=$HOME/build/tdurieux/IntroClassJava-repair/results/$BUG/${D}/jGenProg
		test -d "$d" || mkdir -p "$d" && cp -Rf target/astor/*/astor_output.json "$d"

		mvn fr.inria.gforge.spirals:repair-maven-plugin:jKali;
		d=$HOME/build/tdurieux/IntroClassJava-repair/results/$BUG/${D}/jKali
		test -d "$d" || mkdir -p "$d" && cp -Rf target/astor/*/astor_output.json "$d"

		
		cd $HOME/build/tdurieux/IntroClassJava-repair/results;

		git add $HOME/build/tdurieux/IntroClassJava-repair/results/$BUG/${D}/
		git commit -m "results $BUG/${D}"
		
		cd cwd
		cd ..;
	fi
done

cd $HOME/build/tdurieux/IntroClassJava-repair/results;
git pull --rebase;

git push