with import <nixpkgs> {};

let 
  src = fetchurl {
    url = "https://download.java.net/java/early_access/jdk21/25/GPL/openjdk-21-ea+25_macos-x64_bin.tar.gz";
    hash = "sha256-GDh8bowuy3IMmVATfQ+wBYjWFym7goNa6v3eeBb7dVk=";
  };

  mavenSrc = fetchurl {
    url = "https://dlcdn.apache.org/maven/maven-3/3.9.2/binaries/apache-maven-3.9.2-bin.tar.gz";
    hash = "sha256-gJ7zIgxtF5GVwGwyTLmm002Oy6Vmxc/Y64MWe8A0EX0=";
  };
in

stdenv.mkDerivation {
  name = "java-sandbox";
  shellHook = ''
    export JDK_PATH=$(pwd)/.open-jdk-21
    export MAVEN_PATH=$(pwd)/.maven

    if [ ! -d "$JDK_PATH" ]; then
      mkdir -p $JDK_PATH && \
        tar -xvzf ${src.out} -C $JDK_PATH
    fi

    echo ${mavenSrc.out}
    if [ ! -d "$MAVEN_PATH" ]; then
      mkdir -p $MAVEN_PATH && \
        tar -xvzf ${mavenSrc.out} -C $MAVEN_PATH
    fi

    export JAVA_HOME=$JDK_PATH/jdk-21.jdk/Contents/Home
    export MAVEN_HOME=$MAVEN_PATH/apache-maven-3.9.2
    export PATH="$JAVA_HOME/bin:$PATH"
    export PATH="$MAVEN_HOME/bin:$PATH"
  '';
}
