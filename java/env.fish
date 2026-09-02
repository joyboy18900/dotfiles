# Homebrew's openjdk is keg-only, so nothing symlinks java onto PATH.
# Point JAVA_HOME at the LTS build and add its bin - works on macOS and Linux.
if type -q brew
    set -l jdk (brew --prefix)/opt/openjdk@21
    if test -d $jdk
        set -gx JAVA_HOME $jdk
        fish_add_path $jdk/bin
    end
end
