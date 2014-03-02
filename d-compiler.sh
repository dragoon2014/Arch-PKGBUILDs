package_name=`pacman -Qs d-compiler | head -n 1 | sed -n -r "s/^local\/([^ ]+) .*$/\1/p"`
binary_path=`pacman -Qlq $package_name | grep "^/usr/bin/.*dmd.*$"`
echo $(basename $binary_path)
