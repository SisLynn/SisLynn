# Text
cmds[101] = (params) ->
  colored "gray", join(
    image(params, 0, 1)
    idc(2, params, "textBackground")
    idc(3, params, "verticalPosition")
  )

# Text...
cmds[401] = (params) ->
  colored "navy", id(0, params)

# Show Choices
cmds[102] = (params) ->
  joinPart(
    colored("navy", idt(0, params[0].join(comma)))
    option(join(
      idc(4, params, "textBackground")
      idc(3, params, "horizontalPosition")
      id(2, params) # TODO
      id(1, params) # TODO
    ))
  )

# Show Choices...
cmds[402] = (params) ->
  colored("indigo", qsTr("When %1").arg(colored("navy", id(1, params))))

# When Cancel
cmds[403] = returnSimpleName

# When End
cmds[404] = returnSimpleName

# Input Number
cmds[103] = (params) ->
  join(
    idv(0, params)
    "#{id(1, params)} #{pluralize(params[1], qsTr("digit"), qsTr("digits"))}"
  )

# Select Item
cmds[104] = (params) ->
  join(
    idv(0, params)
    idc(1, params, "itemType")
  )

# Text(S)
cmds[105] = (params) ->
  colored "gray", join(
    "#{qsTr("Speed")} #{id(0, params)}"
    if params[1] then idt(1, qsTr("No Fast Forward"))
  )

# Text(S)...
cmds[405] = (params) ->
  colored "navy", id(0, params)

# Control Switches
cmds[121] = (params) ->
  joinPart(
    idoRange(0, 1, params, "switch")
    " = "
    idc(2, params, "intOnOff")
  )

# Control Self Switches
cmds[123] = (params) ->
  joinPart(
    id(0, params)
    " = "
    idc(1, params, "intOnOff")
  )

# Control Timer
cmds[124] = (params) ->
  joinPart(
    idy(0, params, "timer")

    if params[0] == 0
      comma + idt(1, timer(params[1]))
  )

# Repeat Above
cmds[413] = returnSimpleName

# Call Comment Event
cmds[117] = (params) ->
  ido(0, params, "commonEvent")

# Label
cmds[118] = returnFirstParam

# Jump to Label
cmds[119] = returnFirstParam

# Comment
cmds[108] = cmds[408] = returnFirstParam

# Change Gold
cmds[125] = (params) ->
  joinPart(
    idy(0, params, "plus")
    " "
    idcv(1, 2, params)
  )

# Change Items
cmds[126] = (params) ->
  joinPart(
    ido(0, params, "item")
    " "
    idy(1, params, "plus")
    " "
    idcv(2, 3, params)
  )

# Change Weapons
cmds[127] = (params) ->
  joinPart(
    ido(0, params, "weapon")
    " "
    idy(1, params, "plus")
    " "
    idcv(2, 3, params)

    if params[4] && params[1] == 1
      option(idt(4, qsTr("Include Equipment")))
  )

# Change Armors
cmds[128] = (params) ->
  joinPart(
    ido(0, params, "armor")
    " "
    idy(1, params, "plus")
    " "
    idcv(2, 3, params)

    if params[4] && params[1] == 1
      option(idt(4, qsTr("Include Equipment")))
  )

# Change Party Member
cmds[129] = (params) ->
  joinPart(
    idy(1, params, "changeParty")
    " "
    ido(0, params, "actor")

    if params[2] && params[1] == 0
      option(idt(2, qsTr("Initialize")))
  )
