get_triplet() {
  local CPU_ARCH
  post_arch=''
  if [[ "$1" == "linux-64" ]]; then
    CPU_ARCH="x86_64"
  elif [[ "$1" == "linux-ppc64le" ]]; then
    CPU_ARCH="powerpc64le"
  elif [[ "$1" == "linux-aarch64" ]]; then
    CPU_ARCH="aarch64"
  elif [[ "$1" == "linux-s390x" ]]; then
    CPU_ARCH="s390x"
  elif [[ "$1" == "linux-armv7l" ]]; then
    CPU_ARCH="armv7l"
    post_arch='eabihf'
  else
    echo "Unknown architecture"
    exit 1
  fi
  echo $CPU_ARCH-conda-linux-gnu${post_arch}
}
