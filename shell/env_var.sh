# airbnb dev env
export AWS=inst.aws.us-east-1.prod.musta.ch

# dev env path setting for airbnb projects
export TREEHOUSE_PATH="$HOME/airlab/repos/treehouse"
export JAVA7_HOME='/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home'
export JAVA8_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home'
export JAVA_HOME=$JAVA8_HOME

# path setting
export PATH="$PATH:$JAVA_HOME/bin:"
export PATH="$PATH:$HOME/sysops/optica_tools"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
