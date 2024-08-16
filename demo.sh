JAVA_PATH=$(sudo update-alternatives --config java | grep 'manual mode' | grep 'java-17' | awk '{print $3}' | sed 's|/jre/bin/java||')

echo "JAVA home is set to: $JAVA_PATH"
