# path, the 0 in the filename causes this to load first

export PATH=/usr/local/sbin:/usr/local/bin:$PATH:$yadr/bin:$yadr/bin/yadr:/usr/local/share/npm/bin:/Users/jcugno/Downloads/phpctags:$EC2_HOME/bin:$AWS_RDS_HOME/bin:/opt/local/bin:/opt/local/sbin

function setjdk() {
  if [ $# -ne 0 ]; then
   removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
   if [ -n "${JAVA_HOME+x}" ]; then
    removeFromPath $JAVA_HOME
   fi
   export JAVA_HOME=`/usr/libexec/java_home -v $@`
   export PATH=$JAVA_HOME/bin:$PATH
  fi
 }
 function removeFromPath() {
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
 }
setjdk 1.8
