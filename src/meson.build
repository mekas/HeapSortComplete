heapsort_sources = [
  'main.vala',
  'heap.vala',
  'util.vala'
]

heapsort_deps = [
  dependency('glib-2.0'),
  dependency('gobject-2.0'),
  dependency('gee-0.8'),
]

executable('heapsort', heapsort_sources,
  vala_args: '--target-glib=2.58',  dependencies: heapsort_deps,
  install: true,
)

