prefixNormal = "◆"
prefixContinue = "："
colon = "："
comma = "，"

entityMap = 
  ' ': '&nbsp;'
  '&': '&amp;'
  '<': '&lt;'
  '>': '&gt;'
  '"': '&quot;'
  '\'': '&#39;'
  '/': '&#x2F;'

cmdMap = {
  "?": [ false, true,  "gray",       qsTr("Future Command") ]
  0:   [ null,  null,  "indigo",     "" ]
  101: [ true,  true,  "indigo",     qsTr("Text") ]
  102: [ true,  true,  "indigo",     qsTr("Show Choices") ]
  103: [ true,  true,  "indigo",     qsTr("Input Number") ]
  104: [ true,  true,  "indigo",     qsTr("Select Item") ]
  105: [ true,  true,  "indigo",     qsTr("Text(S)") ]
  121: [ true,  true,  "red",        qsTr("Control Switches") ]
  122: [ true,  true,  "red",        qsTr("Control Variables") ]
  123: [ true,  true,  "red",        qsTr("Control Self Switch") ]
  124: [ true,  true,  "red",        qsTr("Control Timer") ]
  111: [ true,  true,  "blue",       qsTr("If") ]
  112: [ true,  false, "blue",       qsTr("Loop") ]
  113: [ true,  false, "blue",       qsTr("Break Loop") ]
  115: [ true,  false, "blue",       qsTr("Exit Event Processing") ]
  117: [ true,  true,  "blue",       qsTr("Common Event") ]
  118: [ true,  true,  "blue",       qsTr("Label") ]
  119: [ true,  true,  "blue",       qsTr("Jump to Label") ]
  108: [ true,  true,  "green",      qsTr("Comment") ]
  125: [ true,  true,  "darkorange", qsTr("Change Gold") ]
  126: [ true,  true,  "darkorange", qsTr("Change Items") ]
  127: [ true,  true,  "darkorange", qsTr("Change Weapons") ]
  128: [ true,  true,  "darkorange", qsTr("Change Armors") ]
  129: [ true,  true,  "darkorange", qsTr("Change Party Member") ]
  311: [ true,  true,  "darkorange", qsTr("Change HP") ]
  312: [ true,  true,  "darkorange", qsTr("Change MP") ]
  326: [ true,  true,  "darkorange", qsTr("Change TP") ]
  313: [ true,  true,  "darkorange", qsTr("Change State") ]
  314: [ true,  true,  "darkorange", qsTr("Recover All") ]
  315: [ true,  true,  "darkorange", qsTr("Change EXP") ]
  316: [ true,  true,  "darkorange", qsTr("Change Level") ]
  317: [ true,  true,  "darkorange", qsTr("Change Parameter") ]
  318: [ true,  true,  "darkorange", qsTr("Change Skill") ]
  319: [ true,  true,  "darkorange", qsTr("Change Equipment") ]
  320: [ true,  true,  "darkorange", qsTr("Change Name") ]
  321: [ true,  true,  "darkorange", qsTr("Change Class") ]
  324: [ true,  true,  "darkorange", qsTr("Change Nickname") ]
  325: [ true,  true,  "darkorange", qsTr("Change Profile") ]
  201: [ true,  true,  "maroon",     qsTr("Transfer Player") ]
  202: [ true,  true,  "maroon",     qsTr("Set Vehicle Location") ]
  203: [ true,  true,  "maroon",     qsTr("Set Event Location") ]
  204: [ true,  true,  "maroon",     qsTr("Scroll Map") ]
  205: [ true,  true,  "maroon",     qsTr("Set Movement Route") ]
  206: [ true,  false, "maroon",     qsTr("Get on/off Vehicle") ]
  211: [ true,  true,  "maroon",     qsTr("Change Transparency") ]
  216: [ true,  true,  "maroon",     qsTr("Change Player Followers") ]
  217: [ true,  false, "maroon",     qsTr("Gather Followers") ]
  212: [ true,  true,  "maroon",     qsTr("Show Animation") ]
  213: [ true,  true,  "maroon",     qsTr("Show Balloon Icon") ]
  214: [ true,  false, "maroon",     qsTr("Erase Event") ]
  231: [ true,  true,  "purple",     qsTr("Show Picture") ]
  232: [ true,  true,  "purple",     qsTr("Move Picture") ]
  233: [ true,  true,  "purple",     qsTr("Rotate Picture") ]
  234: [ true,  true,  "purple",     qsTr("Tint Picture") ]
  235: [ true,  true,  "purple",     qsTr("Erase Picture") ]
  230: [ true,  true,  "crimson",    qsTr("Wait") ]
  221: [ true,  false, "olive",      qsTr("Fadeout Screen") ]
  222: [ true,  false, "olive",      qsTr("Fadein Screen") ]
  223: [ true,  true,  "olive",      qsTr("Tint Screen") ]
  224: [ true,  true,  "olive",      qsTr("Flash Screen") ]
  225: [ true,  true,  "olive",      qsTr("Shake Screen") ]
  236: [ true,  true,  "olive",      qsTr("Set Weather Effect") ]
  241: [ true,  true,  "teal",       qsTr("Play BGM") ]
  242: [ true,  true,  "teal",       qsTr("Fadeout BGM") ]
  243: [ true,  false, "teal",       qsTr("Save BGM") ]
  244: [ true,  false, "teal",       qsTr("Replay BGM") ]
  245: [ true,  true,  "teal",       qsTr("Play BGS") ]
  246: [ true,  true,  "teal",       qsTr("Fadeout BGS") ]
  249: [ true,  true,  "teal",       qsTr("Play ME") ]
  250: [ true,  true,  "teal",       qsTr("Play SE") ]
  251: [ true,  false, "teal",       qsTr("Stop SE") ]
  261: [ true,  true,  "teal",       qsTr("Play Movie") ]
  301: [ true,  true,  "dodgerblue", qsTr("Battle Processing") ]
  302: [ true,  true,  "dodgerblue", qsTr("Shop Processing") ]
  303: [ true,  true,  "dodgerblue", qsTr("Name Input Processing") ]
  351: [ true,  false, "dodgerblue", qsTr("Open Menu Screen") ]
  352: [ true,  false, "dodgerblue", qsTr("Open Save Screen") ]
  353: [ true,  false, "dodgerblue", qsTr("Game Over") ]
  354: [ true,  false, "dodgerblue", qsTr("Return to Title Screen") ]
  132: [ true,  true,  "magenta",    qsTr("Change Battle BGM") ]
  133: [ true,  true,  "magenta",    qsTr("Change Victory ME") ]
  139: [ true,  true,  "magenta",    qsTr("Change Defeat ME") ]
  140: [ true,  true,  "magenta",    qsTr("Change Vehicle BGM") ]
  134: [ true,  true,  "magenta",    qsTr("Change Save Access") ]
  135: [ true,  true,  "magenta",    qsTr("Change Menu Access") ]
  136: [ true,  true,  "magenta",    qsTr("Change Encounter") ]
  137: [ true,  true,  "magenta",    qsTr("Change Formation Access") ]
  138: [ true,  true,  "magenta",    qsTr("Change Window Color") ]
  322: [ true,  true,  "magenta",    qsTr("Change Actor Images") ]
  323: [ true,  true,  "magenta",    qsTr("Change Vehicle Image") ]
  281: [ true,  true,  "deeppink",   qsTr("Change Map Name Display") ]
  282: [ true,  true,  "deeppink",   qsTr("Change Tileset") ]
  283: [ true,  true,  "deeppink",   qsTr("Change Battle Back") ]
  284: [ true,  true,  "deeppink",   qsTr("Change Parallax") ]
  285: [ true,  true,  "deeppink",   qsTr("Get Location Info") ]
  331: [ true,  true,  "darkviolet", qsTr("Change Enemy HP") ]
  332: [ true,  true,  "darkviolet", qsTr("Change Enemy MP") ]
  342: [ true,  true,  "darkviolet", qsTr("Change Enemy TP") ]
  333: [ true,  true,  "darkviolet", qsTr("Change Enemy State") ]
  334: [ true,  true,  "darkviolet", qsTr("Enemy Recover All") ]
  335: [ true,  true,  "darkviolet", qsTr("Enemy Appear") ]
  336: [ true,  true,  "darkviolet", qsTr("Enemy Transform") ]
  337: [ true,  true,  "darkviolet", qsTr("Show Battle Animation") ]
  339: [ true,  true,  "darkviolet", qsTr("Force Action") ]
  340: [ true,  false, "darkviolet", qsTr("Abort Battle") ]
  355: [ true,  true,  "indigo",     qsTr("Script") ]
  356: [ true,  true,  "indigo",     qsTr("Plugin Command") ]
  401: [ true,  true,  "indigo",     qsTr("Text") ]
  402: [ false, true,  "indigo",     qsTr("When ") ]
  403: [ false, false, "indigo",     qsTr("When Cancel") ]
  404: [ false, false, "indigo",     qsTr("End") ]
  405: [ true,  true,  "indigo",     qsTr("Text(S)") ]
  408: [ true,  true,  "green",      qsTr("Comment") ]
  411: [ true,  true,  "blue",       qsTr("Else") ]
  412: [ true,  true,  "blue",       qsTr("End") ]
  413: [ false, false, "blue",       qsTr("Repeat Above") ]
  505: [ true,  true,  "maroon",     qsTr("Set Movement Route") ]
  601: [ true,  true,  "dodgerblue", qsTr("If Win") ]
  602: [ true,  true,  "dodgerblue", qsTr("If Escape") ]
  603: [ true,  true,  "dodgerblue", qsTr("If Lose") ]
  604: [ true,  true,  "dodgerblue", qsTr("End") ]
  605: [ true,  true,  "dodgerblue", qsTr("Shop Processing") ]
  655: [ true,  true,  "indigo",     qsTr("Script") ]
}

constants =
  textBackground: [
    qsTr("Window", "textBackground")
    qsTr("Dim", "textBackground")
    qsTr("Transparent", "textBackground")
  ]

  verticalPosition: [
    qsTr("Top", "verticalPosition")
    qsTr("Middle", "verticalPosition")
    qsTr("Bottom", "verticalPosition")
  ]

  horizontalPosition: [
    qsTr("Left", "horizontalPosition")
    qsTr("Middle", "horizontalPosition")
    qsTr("Right", "horizontalPosition")
  ]

  itemType: [
    null,
    qsTr("Regular Item", "itemType")
    qsTr("Key Item", "itemType")
    qsTr("Hidden Item A", "itemType")
    qsTr("Hidden Item B", "itemType")
  ]

  intOnOff: [
    qsTr("ON")
    qsTr("OFF")
  ]

yesnos =
  timer: [
    qsTr("Start", "timer")
    qsTr("Stop", "timer")
  ]

  plus: [
    "+"
    "-"
  ]

  disable: [
    qsTr("Disable")
    qsTr("Enable")
  ]

  changeParty: [
    qsTr("Add", "changeParty")
    qsTr("Remove", "changeParty")
  ]
