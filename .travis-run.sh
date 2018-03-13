cd IntroClassJava/dataset;
cd $BUG;
for D in `find . -type d`
do
    cd $D;
    pwd
    mvn test || true;
	mvn fr.inria.gforge.spirals:repair-maven-plugin:nopol;
    cd ..;
done