//
//  MessageCell.swift
//  Flash Chat iOS13
//
//  Created by Rafael Plinio on 02/10/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {
    
    @IBOutlet weak var messageBubble: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var rightImageView: UIImageView!
    

    //semelhate ao viewDidLoad, mas é para o xib
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //messageBubble arredondada, dinamica para acompanhar o tamanho da mensagem
        messageBubble.layer.cornerRadius = messageBubble.frame.size.height / 5
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
