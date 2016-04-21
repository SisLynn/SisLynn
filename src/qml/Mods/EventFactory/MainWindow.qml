import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    SplitView {
        anchors.fill: parent
        orientation: Qt.Horizontal

        EventCommandList {
            id: list
            Layout.minimumWidth: 100
            width: 300
        }

        Component.onCompleted: {
            var x = {"id":5,"name":"s","note":"","pages":[{"conditions":{"actorId":1,"actorValid":false,"itemId":1,"itemValid":false,"selfSwitchCh":"A","selfSwitchValid":false,"switch1Id":1,"switch1Valid":false,"switch2Id":1,"switch2Valid":false,"variableId":1,"variableValid":false,"variableValue":0},"directionFix":false,"image":{"tileId":0,"characterName":"Nature","direction":6,"pattern":0,"characterIndex":2},"list":[{"code":125,"indent":0,"parameters":[0,0,1]},{"code":125,"indent":0,"parameters":[1,1,9]},{"code":126,"indent":0,"parameters":[1,0,0,1]},{"code":126,"indent":0,"parameters":[1,1,1,15]},{"code":127,"indent":0,"parameters":[1,1,1,11,true]},{"code":127,"indent":0,"parameters":[1,0,0,1,false]},{"code":128,"indent":0,"parameters":[1,1,0,3,true]},{"code":128,"indent":0,"parameters":[4,0,0,3,true]},{"code":129,"indent":0,"parameters":[1,0,false]},{"code":129,"indent":0,"parameters":[1,1,false]},{"code":129,"indent":0,"parameters":[1,0,true]},{"code":129,"indent":0,"parameters":[1,1,true]},{"code":124,"indent":0,"parameters":[0,0]},{"code":124,"indent":0,"parameters":[0,605]},{"code":124,"indent":0,"parameters":[0,5]},{"code":124,"indent":0,"parameters":[1,60]},{"code":102,"indent":0,"parameters":[["Yes","No"],-2,0,2,0]},{"code":402,"indent":0,"parameters":[0,"Yes"]},{"code":0,"indent":1,"parameters":[]},{"code":402,"indent":0,"parameters":[1,"No"]},{"code":0,"indent":1,"parameters":[]},{"code":403,"indent":0,"parameters":[6,null]},{"code":0,"indent":1,"parameters":[]},{"code":404,"indent":0,"parameters":[]},{"code":101,"indent":0,"parameters":["Nature",2,0,2]},{"code":401,"indent":0,"parameters":["松鸡是个大笨蛋"]},{"code":108,"indent":0,"parameters":["Hello this is a dark theme"]},{"code":103,"indent":0,"parameters":[1,3]},{"code":104,"indent":0,"parameters":[1,2]},{"code":104,"indent":0,"parameters":[1,1]},{"code":101,"indent":0,"parameters":["Monster",1,0,2]},{"code":401,"indent":0,"parameters":["小伙子，你该有个名字了。"]},{"code":303,"indent":0,"parameters":[1,16]},{"code":301,"indent":0,"parameters":[0,2,false,false]},{"code":101,"indent":0,"parameters":["Nature",2,0,2]},{"code":401,"indent":0,"parameters":["You son of the bitch!"]},{"code":126,"indent":0,"parameters":[2,0,0,5]},{"code":123,"indent":0,"parameters":["A",0]},{"code":122,"indent":0,"parameters":[1,1,0,2,1,20]},{"code":122,"indent":0,"parameters":[2,2,0,2,1,20]},{"code":122,"indent":0,"parameters":[6,6,0,2,1,20]},{"code":122,"indent":0,"parameters":[13,13,0,2,1,20]},{"code":121,"indent":0,"parameters":[1,3,0]},{"code":121,"indent":0,"parameters":[1,1,1]},{"code":123,"indent":0,"parameters":["A",0]},{"code":123,"indent":0,"parameters":["A",1]},{"code":123,"indent":0,"parameters":["D",0]},{"code":355,"indent":0,"parameters":["[1, 2, 5, 8].map(function(i) {"]},{"code":655,"indent":0,"parameters":["  $gameVariable.setValue(i, Math.floor(1 + 19 * Math.rand()))"]},{"code":655,"indent":0,"parameters":["});"]},{"code":112,"indent":0,"parameters":[]},{"code":113,"indent":1,"parameters":[]},{"code":115,"indent":1,"parameters":[]},{"code":117,"indent":1,"parameters":[3]},{"code":118,"indent":1,"parameters":["asdf"]},{"code":119,"indent":1,"parameters":["sadv"]},{"code":108,"indent":1,"parameters":["sadv"]},{"code":206,"indent":1,"parameters":[]},{"code":217,"indent":1,"parameters":[]},{"code":214,"indent":1,"parameters":[]},{"code":221,"indent":1,"parameters":[]},{"code":222,"indent":1,"parameters":[]},{"code":243,"indent":1,"parameters":[]},{"code":244,"indent":1,"parameters":[]},{"code":251,"indent":1,"parameters":[]},{"code":351,"indent":1,"parameters":[]},{"code":352,"indent":1,"parameters":[]},{"code":353,"indent":1,"parameters":[]},{"code":354,"indent":1,"parameters":[]},{"code":340,"indent":1,"parameters":[]},{"code":355,"indent":1,"parameters":["sadf"]},{"code":356,"indent":1,"parameters":["zxcvzxcv"]},{"code":0,"indent":1,"parameters":[]},{"code":413,"indent":0,"parameters":[]},{"code":0,"indent":0,"parameters":[]}],"moveFrequency":3,"moveRoute":{"list":[{"code":0,"parameters":[]}],"repeat":true,"skippable":false,"wait":false},"moveSpeed":3,"moveType":0,"priorityType":1,"stepAnime":false,"through":false,"trigger":0,"walkAnime":true}],"x":2,"y":7}

            list.setList(x.pages[0].list);
        }
    }
}

