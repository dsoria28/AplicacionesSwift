//
//  TableViewCell.swift
//  core
//
//  Created by macmex on 5/9/19.
//  Copyright © 2019 Yogesh Patel. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var lblTitulo: UILabel!
    @IBOutlet var lblAutor: UILabel!
    @IBOutlet var lblEditorial: UILabel!
    @IBOutlet var lblPaginas: UILabel!
    
    var book:Books!{
        didSet{
            lblTitulo.text = book.titulo
            lblAutor.text = book.autor
            lblEditorial.text = book.editorial
            lblPaginas.text = book.paginas
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
