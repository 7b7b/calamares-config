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
			text: "Ahln!"
			anchors.bottom: parent.top
			font.bold: true
		}
		Text {
			color: presentation.textColor;
			width: parent.width
			anchors.fill: parent
			font.pixelSize: parent.baseFontSize
			text: "Ahln (Hello in Arabic) is a arch linux based distro<br/>" +
			"that gives you the easiest way<br/>" +
			"to install a arch linux desktop without the fuss"
        }
    }

    Slide {
		Text {
			color: presentation.textColor;
			font.pixelSize: parent.titleFontSize
			text: "Arch, but easier"
			anchors.bottom: parent.top
			font.bold: true
		}
		Text {
			color: presentation.textColor;
			width: parent.width
			anchors.fill: parent
			font.pixelSize: parent.baseFontSize
			text: "Ahln is just Arch Linux, with Ahln's repo. That's it"
        }
    }

    Slide {
		Text {
			color: presentation.textColor;
			font.pixelSize: parent.titleFontSize
			text: "So, whats inside it?"
			anchors.bottom: parent.top
			font.bold: true
		}
		Text {
			color: presentation.textColor;
			width: parent.width
			anchors.fill: parent
			font.pixelSize: parent.baseFontSize
			text: "Ahln's repo includes Mint-Y & Mint-X for better default themes,<br/>" + 
			"added plugins for panel and pamac for easy package management"
        }
    }

    Slide {
		Text {
			color: presentation.textColor;
			font.pixelSize: parent.titleFontSize
			text: "No fuss, configure it whatever you want"
			anchors.bottom: parent.top
			font.bold: true
		}
		Text {
			color: presentation.textColor;
			width: parent.width
			anchors.fill: parent
			font.pixelSize: parent.baseFontSize
			text: "Ahln is bare bones,<br/>" + 
			"it doesn't have any included applications to bloat your desktop,<br/>" + 
			"all yours to configure and change."
        }
    }

    Component.onCompleted: advanceTimer.running = true
}