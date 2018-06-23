//
//  ViewMessageSizeCalculator.swift
//  MessageKit
//
//  Created by Sergey on 23.06.2018.
//  Copyright © 2018 MessageKit. All rights reserved.
//

import Foundation
open class ViewMessageSizeCalculator: MessageSizeCalculator {
    
    open override func messageContainerSize(for message: MessageType) -> CGSize {
        switch message.kind {
        case .view:
            let maxWidth = messageContainerMaxWidth(for: message)
        
                // Maintain the ratio if width is too great
                let height = maxWidth * 3 / 4
                return CGSize(width: maxWidth, height: height)
            
    
        default:
            fatalError("messageContainerSize received unhandled MessageDataType: \(message.kind)")
        }
    }
}
