if [ ! -d "IntroClassJava" ]; then
	echo "clone IntroClassJava"
	git clone https://github.com/Spirals-Team/IntroClassJava.git;
fi

if [ ! -d "maven-repair" ]; then
	echo "clone maven-repair"
	git clone https://github.com/Spirals-Team/maven-repair.git;
fi

git clone --quiet --branch=results https://${GITHUB_PASSWORD}@github.com/tdurieux/IntroClassJava-repair.git results > /dev/null;
git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis"

cd maven-repair;
mvn install -q -DskipTests
cd ..


