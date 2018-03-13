if [ ! -d "IntroClassJava" ]; then
	git clone https://github.com/Spirals-Team/IntroClassJava.git || true;
fi

if [ ! -d "maven-repair" ]; then
	git clone https://github.com/Spirals-Team/maven-repair.git || true;
fi

cd maven-repair;
mvn install -DskipTests
cd ..


