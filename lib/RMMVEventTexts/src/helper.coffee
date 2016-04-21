escape = (string) ->
  String(string).replace /[ &<>"'\/]/g, (s) ->
    entityMap[s]

padLeft = (nr, n, str) ->
  Array(n - (String(nr).length) + 1).join(str or '0') + nr

convert = (data) ->
  (if debug then "<small>#{colored("black", padLeft(data.code, 3, "0"))}</small>" else "") + indent(data) + prefix(data) + body(data)

repeatString = (str, count) ->
  Array(count + 1).join(str)

colored = (color, text) ->
  "<font color=\"#{escape(color)}\">#{text}</font>"

indent = (data) ->
  escape(repeatString("  ", data.indent || 0))

prefix = (data) ->
  if Number(data.code) >= 400 then prefixContinue else prefixNormal

eventPrefix = (code) ->
  cmdMap[validCode(Number(code))]?[0]

eventHasParams = (code) ->
  cmdMap[validCode(Number(code))]?[1]    

eventColor = (code) ->
  cmdMap[validCode(Number(code))]?[2] ? "gray"

eventText = (code) ->
  cmdMap[validCode(Number(code))]?[3]

body = (data) ->
  return "" if Number(data.code) == 0

  text = ""
  if eventPrefix data.code
    if Number(data.code) >= 400
      text += colored("transparent", escape(eventText(data.code)))
    else
      text += colored(eventColor(data.code), escape(eventText(data.code)))

    if eventHasParams(data.code)
      text += colored(eventColor(data.code), colon)
      text += colored(eventColor(data.code), paramText(data))
  else
    text = paramText(data)

  text

validCode = (code) ->
  if cmdMap[Number(code)]
    Number(code)
  else
    "?"

unknown = (anything) ->
  escape("�" + JSON.stringify(anything))

paramText = (data) ->
  params = data.parameters || []
  func = cmds[validCode(Number(data.code))]
  return func(params, data) if func
  return unknown(params)

cmds = {}

cmds["?"] = (params, data) ->
  colored("gray", qsTr("Future Command") + colon + data.code + colon + JSON.stringify(params))

constant = (key, value) ->
  return unknown(value) unless values = constants[key]
  return unknown(value) unless values[value || 0]
  return values[value || 0]

yesno = (key, value) ->
  return unknown(value) unless values = yesnos[key]
  if value == 0
    return values[0]
  else
    return values[1]

# identify HTML
idh = (index, html) ->
  joinPart(
    if debug
      "<small>#{colored("black", index)}</small><u>"
    
    "<a id=\"#{index}\">#{html}</a>"
    
    if debug
      "</u>"
  )

# identify Text
idt = (index, text) ->
  idh index, escape(text)

# identify Constant
idc = (index, params, key) ->
  idh index, escape(constant(key, params[index]))

# identify Constant
idcv = (indexType, indexValue, params, key) ->
  if params[indexType] == 0
    idt indexValue, params[indexValue]
  else
    idh indexValue, "{#{vid(params[indexValue])}}"

# identify Yes Nos
idy = (index, params, key) ->
  idh index, escape(yesno(key, params[index]))

# identify Object ID
ido = (index, params, type) ->
  idh index, oid(type, params[index])

idoRange = (index1, index2, params, type) ->
  if params[index1] == params[index2]
    idh(index2, idh(index1, oid(type, params[index1])))
  else
    joinPart(
      idh index1, oid(type, params[index1])
      ".."
      idh index2, idtext(params[index2])
    )

# identify Variable ID
idv = (index, params) ->
  idh index, vid(params[index])

# identify Switch ID
ids = (index, params) ->
  idh index, sid(params[index])

# identify
id = (index, params) ->
  idh index, escape(params[index])

idtext = (index) ->
  escape("#" + padLeft(String(index), 4, "0"))

oid = (type, index) ->
  idtext(index)

vid = (index) ->
  oid("variable", index)

sid = (index) ->
  sid("switch", index)

image = (params, filename, index) ->
  "#{idt(filename, params[filename] || qsTr("None"))}(#{id(index, params)})"

option = (text...) ->
  " #{colored("gray", "(#{text})")}"

join = (args...) ->
  args.filter((x) -> x?).join(comma)

joinNull = (args...) ->
  args.join(comma)

joinPart = (args...) ->
  args.join("")

returnFirstParam = (params) ->
  id(0, params)

returnSimpleName = (params, data) ->
  colored(eventColor(data.code), escape(eventText(data.code)))

pluralize = (i, s, p) ->
  if i == 1 then s else p

timer = (value) ->
  qsTr("%1 min %2 sec").arg(Math.floor(value / 60)).arg(Math.floor(value % 60))
