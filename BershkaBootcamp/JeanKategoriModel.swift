//
//  JeanKategoriModel.swift
//  BershkaBootcamp
//
//  Created by Mac on 19.08.2022.
//

import Foundation


class JeanKategoriModel {

    
    var kategoriId : Int?
    var kategoriAd: String?
    var kategoriFoto: String?
    
     init(kategoriId: Int, kategoriAd: String, kategoriFoto: String) {
        self.kategoriId = kategoriId
        self.kategoriAd = kategoriAd
        self.kategoriFoto = kategoriFoto
    }
}
