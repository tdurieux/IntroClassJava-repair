cd IntroClassJava/dataset;
cd $BUG;
for D in *; do
	if [ -d "${D}" ]; then
		cwd=$(pwd)
		cd ${D};

		mvn test || true;
		mvn fr.inria.gforge.spirals:repair-maven-plugin:nopol;
		mvn fr.inria.gforge.spirals:repair-maven-plugin:jGenProg;
		mvn fr.inria.gforge.spirals:repair-maven-plugin:jKali;

		cp -Rf target/nopol $HOME/tdurieux/IntroClassJava-repair/results/$BUG/${D}/nopol
		cp -Rf target/jGenProg $HOME/tdurieux/IntroClassJava-repair/results/$BUG/${D}/jGenProg
		cp -Rf target/jKali $HOME/tdurieux/IntroClassJava-repair/results/$BUG/${D}/jKali

		cd $HOME/tdurieux/IntroClassJava-repair/results;
		git commit -m "results $BUG/${D}"
		
		cd cwd
		cd ..;
	fi
done
cd $HOME/tdurieux/IntroClassJava-repair/results;
git pull --rebase;
git push