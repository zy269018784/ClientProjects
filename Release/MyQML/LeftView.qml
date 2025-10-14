import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls

ListView
{
	id: myListView
	currentIndex: -1
	model: ListModel {
		ListElement { title: qsTr("首页"); source: "MyButton.qml" }
        ListElement { title: qsTr("创建云机"); source: "MyButton2.qml" }
        ListElement { title: qsTr("我的云机"); source: "MyButton2.qml" }
        ListElement { title: qsTr("购买代理IP"); source: "MyButton2.qml" }
        ListElement { title: qsTr("分组管理"); source: "MyButton2.qml" }
        ListElement { title: qsTr("应用市场"); source: "MyButton2.qml" }
        ListElement { title: qsTr("自动化"); source: "MyButton2.qml" }
        ListElement { title: qsTr("团队管理"); source: "MyButton2.qml" }
        ListElement { title: qsTr("我的钱包"); source: "MyButton2.qml" }
        ListElement { title: qsTr("推荐奖励"); source: "MyButton2.qml" }
        ListElement { title: qsTr("云盘存储"); source: "MyButton2.qml" }
	}
	delegate: ItemDelegate {
		text: title
		onClicked: {
			console.log("点击了项目:", index, "当前currentIndex:", myListView.currentIndex)
			myListView.currentIndex = index
			console.log("设置后currentIndex:", myListView.currentIndex)
		}
    }
}