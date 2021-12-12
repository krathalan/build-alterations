#!/bin/bash

printf "\
diff --git a/PKGBUILD b/PKGBUILD
index bb5b71d..e0035c8 100644
--- a/PKGBUILD
+++ b/PKGBUILD
@@ -62,7 +62,7 @@
 #  39. Generic-x86-64-v4 (GENERIC_CPU4)
 #  40. Intel-Native optimizations autodetected by GCC (MNATIVE_INTEL)
 #  41. AMD-Native optimizations autodetected by GCC (MNATIVE_AMD)
-: \"\${_subarch:=\"\"}\"
+: \"\${_subarch:=\"38\"}\"

 # Use the current kernel's .config file
 # Enabling this option will use the .config of the RUNNING kernel rather than
@@ -72,7 +72,7 @@
 : \"\${_use_current:=\"\"}\"

 # Enable compiling with LLVM
-: \"\${_use_llvm_lto:=\"\"}\"
+: \"\${_use_llvm_lto:=\"Y\"}\"

 ### IMPORTANT: Do no edit below this line unless you know what you're doing
" > /tmp/krack-post.patch

patch PKGBUILD /tmp/krack-post.patch
rm -f /tmp/krack-post.patch
