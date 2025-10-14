import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls

ListView
{
	id: myListView
	currentIndex: 0
	model: ListModel {
		ListElement { title: qsTr("首页");         source: "HomePage/HomePage.qml" }
        ListElement { title: qsTr("创建云机");      source: "CreateCloudMachine/CreateCloudMachine.qml" }
        ListElement { title: qsTr("我的云机");      source: "MyCloudMachine/MyCloudMachine.qml" }
        ListElement { title: qsTr("购买代理IP");    source: "BuyProxyIP/HomePage.qml" }
        ListElement { title: qsTr("我的代理IP");    source: "MyProxyIP/MyProxyIP.qml" }
        ListElement { title: qsTr("分组管理");      source: "GroupManagement/GroupManagement.qml" }
        ListElement { title: qsTr("应用市场");      source: "AppMarket/AppMarket.qml" }
        ListElement { title: qsTr("自动化");        source: "Automation/Automation.qml" }
        ListElement { title: qsTr("团队管理");      source: "TeamManagement/TeamManagement.qml" }
        ListElement { title: qsTr("我的钱包");      source: "MyWallet/MyWallet.qml" }
        ListElement { title: qsTr("推荐奖励");      source: "ReferralBonus/ReferralBonus.qml" }
        ListElement { title: qsTr("云盘存储");      source: "CloudStorage/CloudStorage.qml" }
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