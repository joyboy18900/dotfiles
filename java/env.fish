# Homebrew's openjdk is keg-only. Point JAVA_HOME at the openjdk@21 JDK home:
# a .jdk bundle on macOS, the prefix itself on Linux.
if type -q brew
    set -l base (brew --prefix)/opt/openjdk@21
    set -l jdk $base/libexec/openjdk.jdk/Contents/Home
    test -d $jdk; or set jdk $base
    if test -x $jdk/bin/java
        set -gx JAVA_HOME $jdk
        fish_add_path $jdk/bin
    end
end
