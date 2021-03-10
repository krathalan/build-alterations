#!/bin/bash

printf "\
diff --git a/PKGBUILD b/PKGBUILD
index e10fac1..134b8da 100644
--- a/PKGBUILD
+++ b/PKGBUILD
@@ -46,7 +46,7 @@ _enable_gcc_more_v="y"
 #  31. Intel Tiger Lake (MTIGERLAKE)
 #  32. Generic-x86-64 (GENERIC_CPU)
 #  33. Native optimizations autodetected by GCC (MNATIVE)
-_subarch=33
+_subarch=25
 
 # Compile ONLY used modules to VASTLY reduce the number of modules built
 # and the build time.
@@ -71,7 +71,7 @@ _major=5.10
 _minor=22
 _srcname=linux-\${_major}
 _clr=\${_major}.19-1032
-pkgbase=linux-clear
+pkgbase=linux-clear-skylake
 pkgver=\${_major}.\${_minor}
 pkgrel=1
 pkgdesc='Clear Linux'
@@ -79,7 +79,7 @@ arch=('x86_64')
 url="https://github.com/clearlinux-pkgs/linux"
 license=('GPL2')
 makedepends=('bc' 'cpio' 'git' 'kmod' 'libelf' 'xmlto')
-options=('!strip')
+options=('!strip' '!ccache')
 _gcc_more_v='20210309'
 source=(
   \"https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-\${_major}.tar.xz\"
" > /tmp/krack-post.patch

patch PKGBUILD /tmp/krack-post.patch
rm -f /tmp/krack-post.patch
