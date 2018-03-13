if [ ! -d "IntroClassJava" ]; then
	echo "clone IntroClassJava"
	git clone https://github.com/Spirals-Team/IntroClassJava.git;
fi

if [ ! -d "maven-repair" ]; then
	echo "clone maven-repair"
	git clone https://github.com/Spirals-Team/maven-repair.git;
fi

cd maven-repair;
mvn install -DskipTests
cd ..


