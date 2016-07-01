user=$(config user)
mode=$(config mode)
target=$(config target)

if test -f $target && ! diff -q $test_root_dir/content.tmp $target ; then
    echo updating target $target ...
    diff -u $test_root_dir/content.tmp $target
fi

cp $test_root_dir/content.tmp $target || exit 1
echo target $target updated

if test "${user}"; then 
  chown $user $target || exit 1;
  echo set target owner to $user
fi

if test "${mode}"; then 
  chmod $mode $target || exit 1;
  echo set target mode to $mode
fi
