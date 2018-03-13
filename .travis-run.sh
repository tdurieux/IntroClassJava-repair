cd IntroClassJava/dataset;
cd $BUG;
for D in *; do
	if [ -d "${D}" ]; then
		echo "${D}"
		cd ${D};
		pwd
		mvn test || true;
		mvn fr.inria.gforge.spirals:repair-maven-plugin:nopol;
		cd ..;
	fi
done