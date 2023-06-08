# java-sandbox

This is a simple sandbox for playing with Java 21 and its [new features][new].

Tools used: [nix (shell)][nix-shell], [maven] and Java JDK 21.

## Install / Usage

```bash
nix-shell shell.nix
mvn package
java --enable-preview -jar target/*.jar
```

\- [Oto Brglez](https://github.com/otobrglez)

[nix-shell]: https://nixos.org/
[maven]: https://maven.apache.org/
[new]: https://openjdk.org/projects/jdk/21/
