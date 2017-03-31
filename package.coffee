pack = Packages.register
  name: 'evernote'
  description: 'Evernote app integration'

# used to maintain vim state
pack.state = {}

Scope.register
  name: "evernote"
  applications: [
    'com.evernote.EvernoteHelper'
  ]

pack.commands
  'decrease-indent-level':
    enabled: true
    spoken: 'lip'
    description: 'decrease indent level'
    tags: ['evernote']
    action: ->
      @key '[', 'command shift'
  'increase-indent-level':
    enabled: true
    spoken: 'rip'
    description: 'increase indent level'
    tags: ['evernote']
    action: ->
      @key ']', 'command shift'
  'toggle-bulleted-list':
    enabled: true
    spoken: 'boggle'
    description: ' toggle bulleted list'
    tags: ['evernote']
    action: ->
      @key 'u', 'command shift'
