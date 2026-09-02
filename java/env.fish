# Homebrew's openjdk is keg-only, so nothing symlinks java onto PATH.
# Point JAVA_HOME and PATH at the LTS build (openjdk@21).
#
# macOS lays the JDK out inside a .jdk bundle; Linux puts it straight at
# the prefix. Try the bundle path first, fall back to the prefix.
if type -q brew
    set -l base (brew --prefix)/opt/openjdk@21
    set -l jdk $base/libexec/openjdk.jdk/Contents/Home
    test -d $jdk; or set jdk $base
    if test -x $jdk/bin/java
        set -gx JAVA_HOME $jdk
        fish_add_path $jdk/bin
    end
end
