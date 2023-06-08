# java-sandbox

This is a simple sandbox for playing with Java 21 and its new features.

Tools used: [nix (shell)][nix-shell], [maven] and Java JDK 21.

- [Oto Brglez](https://github.com/otobrglez

## Install

```bash
nix-shell shell.nix
mvn package

java --enable-preview target/*.jar
```


[nix-shell]: https://nixos.org/
[maven]: https://maven.apache.org/

