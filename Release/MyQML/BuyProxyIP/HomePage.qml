import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls

TabBar {
    id: bar
    width: parent.width
    TabButton {
        text: qsTr("购买代理IP")
    }
    TabButton {
        text: qsTr("代理IP信息")
    }
    TabButton {
        text: qsTr("订单信息")
    }
}

