/*
 * SPDX-FileCopyrightText: 2013 Bhushan Shah <bhush94@gmail.com>
 * SPDX-FileCopyrightText: 2013 Sebastian Kügler <sebas@kde.org>
 * SPDX-FileCopyrightText: 2014 Kai Uwe Broulik <kde@privat.broulik.de>
 *
 * SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only OR LicenseRef-KDE-Accepted-GPL
 */

import QtQuick 2.0
import QtQuick.Controls 2.5 as QQC2
import QtQuick.Layouts 1.0
import org.kde.kirigami 2.5 as Kirigami

Kirigami.FormLayout {
    id: appearancePage

    property alias cfg_goal: goal.text

    property alias cfg_boldText: boldCheckBox.checked
    property alias cfg_italicText: italicCheckBox.checked

    QQC2.TextField {
        id: goal
        Layout.fillWidth: true
        placeholderText: "Goal"
        Kirigami.FormData.label: i18nc("@title:group", "Goal:")
    }

    QQC2.CheckBox {
        id: boldCheckBox
        Kirigami.FormData.label: i18nc("@title:group", "Font:")
        text: i18nc("@option:check", "Bold text")
    }

    QQC2.CheckBox {
        id: italicCheckBox
        text: i18nc("@option:check", "Italic text")
    }
}
