#!/bin/bash

printf "\
diff --git a/wine-tkg-git/PKGBUILD b/wine-tkg-git/PKGBUILD
index 397fd7f..3211011 100644
--- a/wine-tkg-git/PKGBUILD
+++ b/wine-tkg-git/PKGBUILD
@@ -70,7 +70,7 @@ fi
 options=(${_makepkg_options[@]})

 license=('LGPL')
-depends=(
+depends=('jack2'
     'attr'                  'lib32-attr'
     'fontconfig'            'lib32-fontconfig'
     'lcms2'                 'lib32-lcms2'
" > /tmp/krack-post.patch

patch PKGBUILD /tmp/krack-post.patch
rm -f /tmp/krack-post.patch
