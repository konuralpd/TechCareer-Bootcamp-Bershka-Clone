//
//  Urunler.swift
//  BershkaBootcamp
//
//  Created by Mac on 19.08.2022.
//

import Foundation


class Urunler{
    var uruniId : Int?
    var urunAd: String?
    var urunFoto: String?
    var urunFiyat: Double?
    
     init(uruniId: Int, urunAd: String, urunFoto: String, urunFiyat: Double) {
        self.uruniId = uruniId
        self.urunAd = urunAd
        self.urunFoto = urunFoto
        self.urunFiyat = urunFiyat
    }
    
    
}
