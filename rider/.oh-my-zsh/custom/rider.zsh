rider() {
  nohup /home/diogo/.local/share/JetBrains/Toolbox/apps/rider/bin/rider "$@" >/dev/null 2>&1 &
}
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64"
export PATH="$PATH:$JAVA_HOME/bin"
# Android SDK
export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

