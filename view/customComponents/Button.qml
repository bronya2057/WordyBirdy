import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.11
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

Button {
    id: btnTrainingSelect;
    anchors.centerIn: parent
    property string firstfield: "a"
    property string secondfield: "sometext"
    iconSource: "data:image/gif;base64,R0lGODlhEAAQAMQAAORHHOVSKudfOulrSOp3WOyDZu6QdvCchPGolfO0o/XBs/fNwfjZ0frl3/zy7////wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAkAABAALAAAAAAQABAAAAVVICSOZGlCQAosJ6mu7fiyZeKqNKToQGDsM8hBADgUXoGAiqhSvp5QAnQKGIgUhwFUYLCVDFCrKUE1lBavAViFIDlTImbKC5Gm2hB0SlBCBMQiB0UjIQA7"
    text: firstfield + " " + secondfield
    style: ButtonStyle {
        background: Rectangle {
            id: bg
            border.width: 1
            border.color: palette.mid
            radius: 3
            gradient: Gradient {
                GradientStop { position: 0.0; color: control.pressed ? palette.button : palette.light }
                GradientStop { position: 0.5; color: palette.midlight }
                GradientStop { position: 1.0; color: control.pressed ? palette.light : palette.button }
            }
        }
        label: RowLayout {
            id: row
            spacing: 5
            Image { source: control.iconSource }
            Label {text: control.firstfield; font.family: "Symbol"; font.pixelSize: 18; color: palette.buttonText}
            Label {text: control.secondfield; color: palette.buttonText}

        }
    }

    SystemPalette { id: palette; colorGroup: SystemPalette.Active }
}
