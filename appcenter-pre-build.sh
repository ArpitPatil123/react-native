#!/bin/bash

# Update package list and install Java 17
echo "Installing Java 17..."
sudo apt-get update
sudo apt-get install -y openjdk-17-jdk

# Find the path of Java 17
JAVA_PATH=$(update-alternatives --config java | grep 'java-17' | awk '{print $3}' | sed 's|/bin/java||')

# Check if JAVA_PATH is not empty
if [ -z "$JAVA_PATH" ]; then
  echo "Java 17 installation not found. Please check the installation."
  exit 1
fi

# Set JAVA_HOME
export JAVA_HOME=$JAVA_PATH
export PATH=$JAVA_HOME/bin:$PATH

# Print Java version to verify
java -version

# Print JAVA_HOME to verify
echo "JAVA_HOME is set to: $JAVA_HOME"
