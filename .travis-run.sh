cd IntroClassJava/dataset;
cd $BUG;
for D in `find . -type d`
do
	echo ${D};
    cd ${D};
    pwd
    mvn test || true;
	mvn fr.inria.gforge.spirals:repair-maven-plugin:nopol;
    cd ..;
done