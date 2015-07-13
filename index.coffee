lookup = require('./lib/lookup')
add    = require('./lib/add')
view   = require('./lib/view')
list   = require('./lib/list')
watch  = require('./lib/watch')

cmd = process.argv[2]
if cmd == 'lookup'
  args = process.argv.slice(3).join(' ')
  lookup(args)
else if cmd == 'add'
  add(process.argv[3])
else if cmd == 'watch'
  watch(process.argv[3])
else if cmd == 'list'
  list()
else if cmd == 'view'
  view(process.argv[3])
else
  console.log('Unsupported command')
  process.exit(1)
