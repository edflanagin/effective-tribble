export DISPLAY=
javac *.java -d .
if [ $? -eq 0 ]; then # if compilation succeeded
    jar -cfm Picture.jar .manifest.txt *.class *.ttf
    java -jar Picture.jar
fi
