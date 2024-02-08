//
//  CarPlaySceneDelegate.swift
//  CarPlaySwiftUI
//
//  Created by Adam Mischke on 2/8/24.
//

import Foundation
import CarPlay

class CarPlaySceneDelegate: UIResponder, CPTemplateApplicationSceneDelegate {
    private var interfaceController: CPInterfaceController?

    /// 1. CarPlay connected
    func templateApplicationScene(
        _ templateApplicationScene: CPTemplateApplicationScene,
        didConnect interfaceController: CPInterfaceController
    ) {
        // 2
        self.interfaceController = interfaceController

        // 3
        setInformationTemplate()
    }

    /// 4. Information template
    private func setInformationTemplate() {
        // 5 - Setting the content for the template
        let items: [CPInformationItem] = [
            CPInformationItem(
                title: "Template type",
                detail: "Information Template (CPInformationTemplate)"
            )
        ]

        // 6 - Selecting the template
        let infoTemplate = CPInformationTemplate(title: "My first template",
                                                 layout: .leading,
                                                 items: items,
                                                 actions: [])

        // 7 - Setting the information template as the root template
        interfaceController?.setRootTemplate(infoTemplate,
                                             animated: true,
                                             completion: { success, error in
            if let error = error {
                debugPrint("Error: \(error)")
            }
        })
    }
}
