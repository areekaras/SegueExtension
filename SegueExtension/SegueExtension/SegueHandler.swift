//
//  SegueHandler.swift
//  SegueExtension
//
//  Created by Shibili Areekara on 18/11/21.
//

import UIKit

protocol SegueHandler {
    associatedtype SegueIdentifier: RawRepresentable
}

extension SegueHandler where Self: UIViewController, SegueIdentifier.RawValue == String {
    func segueIdentifier(for segue: UIStoryboardSegue) -> SegueIdentifier {
        guard let identifier = segue.identifier, let segueIdentifier = SegueIdentifier(rawValue: identifier)  else {
            fatalError("Unknown segue \(segue)")
        }
        
        return segueIdentifier
    }
}
