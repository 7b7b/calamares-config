import QtQuick 2.0;
import "slideshow";

Presentation
{
    id: presentation

    Timer {
        id: advanceTimer
        interval: 5000
        running: false
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }

    Slide {
		Text {
			color: presentation.textColor;
			font.pixelSize: parent.titleFontSize
			text: "Welcome to installer"
			anchors.bottom: parent.top
			font.bold: true
		}
		Text {
			color: presentation.textColor;
			width: parent.width
			anchors.fill: parent
			font.pixelSize: parent.baseFontSize
			text: "Please wait untill the installation completes."
		}
    }

    Component.onCompleted: advanceTimer.running = true
}
