pragma Singleton
import QtQuick 2.4

Item {
  property string fixedFont: initFont()

  function initFont() {
    fixedFont = fixedLatinFont.name + ", PingFang SC, Heiti SC, STHeiti";
  }

  FontLoader {
    id: fixedLatinFont
    source: "../Fonts/mplus-mini-1m-regular.ttf"
  }
}
