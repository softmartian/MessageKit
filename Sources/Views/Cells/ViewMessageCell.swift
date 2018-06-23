//
//  ViewMessageCell.swift
//  MessageKit
//
//  Created by Sergey on 23.06.2018.
//  Copyright © 2018 MessageKit. All rights reserved.
//

import Foundation
open class ViewMessageCell: MessageContentCell {
  
   
    open var view = UIView()
    
   
    
    open override func setupSubviews() {
        super.setupSubviews()
       
        messageContainerView.addSubview(view)
       
        setupConstraints()
    }
    
    /// Responsible for setting up the constraints of the cell's subviews.
    open func setupConstraints() {
        view.fillSuperview()
      
    }
    
    open override func prepareForReuse() {
        super.prepareForReuse()
       view = UIView()
    }
    
    open override func configure(with message: MessageType, at indexPath: IndexPath, and messagesCollectionView: MessagesCollectionView) {
        
        guard let displayDelegate = messagesCollectionView.messagesDisplayDelegate else {
            fatalError(MessageKitError.nilMessagesDisplayDelegate)
        }
         guard case let .view(view) = message.kind else { fatalError("") }
         self.view = view
         messageContainerView.addSubview(view)
         view.fillSuperview()
        }
    }

