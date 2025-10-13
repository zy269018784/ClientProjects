import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls

ListView
{
	anchors.fill: parent
	model: ListModel {
		ListElement { title: qsTr("MyButton 1"); source: "MyButton.qml" }
	}
	delegate: Text {
         text: title
     }
}