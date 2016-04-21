import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import "../../Controls"
import "../../../jslib/RMMVEventTexts.js" as RMMVEventTexts

TableView {
    TableViewColumn {
        role: "title"
        title: "Title"
    }

    model: ListModel {
        id: model
    }

    headerVisible: false

    itemDelegate: Component {
        Text {
            height: 24
            id: label
            textFormat: Text.RichText
            color: styleData.textColor
            elide: styleData.elideMode
            font.family: Palette.fixedFont
            verticalAlignment: Text.AlignVCenter

            text: String(processColorTag(model ? model.text : ""))

            function processColorTag(text) {
                if (!styleData.selected)
                    return text;
                return text.replace(/<font color=".*?">|<\/font>/gi, "");
            }
        }
    }

    function setList(list) {
        list.forEach(function(i) {
            model.append({text: RMMVEventTexts.instance.convert(i)});
        });
    }
}
