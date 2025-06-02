### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
properties() { '
kernel.string=IXOZ Kernel 
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=spes
is_slot_device=1
supported.versions=13.0
'; }

### AnyKernel install

# boot shell variables
BLOCK=boot;
IS_SLOT_DEVICE=1;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

# import core functions (DO NOT REMOVE)
. tools/ak3-core.sh;

# begin boot image install
dump_boot;

# Optional: ramdisk edits go here (usually not needed unless you're patching init or adding binaries)

write_boot;
## end boot install
