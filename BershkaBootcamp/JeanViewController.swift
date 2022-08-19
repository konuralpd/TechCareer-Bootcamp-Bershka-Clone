//
//  JeanViewController.swift
//  BershkaBootcamp
//
//  Created by Mac on 19.08.2022.
//

import UIKit

class JeanViewController: UIViewController {

    @IBOutlet weak var jeanKategoriCollectionView: UICollectionView!
    @IBOutlet weak var urunlerCollectionView: UICollectionView!
    
    
    var kategoriler = [JeanKategoriModel]()
    var urunler = [Urunler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        let k1 = JeanKategoriModel(kategoriId: 1, kategoriAd: "Kargo ve Paraşüt", kategoriFoto: "kargo")
        let k2 = JeanKategoriModel(kategoriId: 2, kategoriAd: "Straight", kategoriFoto: "straight")
        let k3 = JeanKategoriModel(kategoriId: 3, kategoriAd: "Wide Leg", kategoriFoto: "wideleg")
        let k4 = JeanKategoriModel(kategoriId: 4, kategoriAd: "Carpenter Jean", kategoriFoto: "carpenter")
        let k5 = JeanKategoriModel(kategoriId: 5, kategoriAd: "Baggy", kategoriFoto: "baggy")
        let k6 = JeanKategoriModel(kategoriId: 6, kategoriAd: "Loose", kategoriFoto: "loose")
        
        
        let u1 = Urunler(uruniId: 1, urunAd: "Bol Kesim Jean", urunFoto: "urun1", urunFiyat: 549.95)
        let u2 = Urunler(uruniId: 2, urunAd: "Bol Kesim Jean", urunFoto: "urun2", urunFiyat: 549.95)
        let u3 = Urunler(uruniId: 2, urunAd: "Wide Leg 90's Jean", urunFoto: "urun3", urunFiyat: 499.95)
        let u4 = Urunler(uruniId: 2, urunAd: "Loose Jean", urunFoto: "urun4", urunFiyat: 499.95)
        urunler.append(u1)
        urunler.append(u2)
        urunler.append(u3)
        urunler.append(u4)
        
        
        kategoriler.append(k1)
        kategoriler.append(k2)
        kategoriler.append(k3)
        kategoriler.append(k4)
        kategoriler.append(k5)
        kategoriler.append(k6)
        
        jeanKategoriCollectionView.delegate = self
        jeanKategoriCollectionView.dataSource = self
        
        urunlerCollectionView.delegate = self
        urunlerCollectionView.dataSource = self
        
        let tasarim = UICollectionViewFlowLayout()
        tasarim.scrollDirection = .horizontal

        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 0)
        tasarim.minimumLineSpacing = 2
        tasarim.minimumLineSpacing = 2
        
        let genislik = jeanKategoriCollectionView.frame.size.width
        let hucreGenislik = (genislik)/3
        tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik*1.6)
        jeanKategoriCollectionView.collectionViewLayout = tasarim
      
        
        let tasarim2 = UICollectionViewFlowLayout()
        tasarim2.scrollDirection = .vertical

        tasarim2.sectionInset = UIEdgeInsets(top: 10, left: 5, bottom: 10, right: 5)
        tasarim2.minimumLineSpacing = 2
        tasarim2.minimumLineSpacing = 2
        
        let genislik2 = urunlerCollectionView.frame.size.width
        let hucreGenislik2 = (genislik2-30)/2
        tasarim2.itemSize = CGSize(width: hucreGenislik2, height: hucreGenislik2*2)
        urunlerCollectionView.collectionViewLayout = tasarim2
      
      
    }
    

 

}


extension JeanViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case jeanKategoriCollectionView:
            return kategoriler.count
        case urunlerCollectionView:
            return urunler.count
        default: return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case jeanKategoriCollectionView:
        let kategori = kategoriler[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "kategoriCell", for: indexPath) as! KategoriCollectionViewCell
        cell.kategoriAdLabel.text = kategori.kategoriAd
        cell.kategoriIV.image = UIImage(named: kategori.kategoriFoto!)
        
        return cell
        case urunlerCollectionView:
            let urun = urunler[indexPath.row]
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "urunHucre", for: indexPath) as! UrunHucreCollectionViewCell
            cell.urunAdLabel.text = urun.urunAd
            cell.urunIV.image = UIImage(named: urun.urunFoto!)
            cell.urunFiyatLabel.text = "\(urun.urunFiyat!) TL"
            
            return cell
        default: return UICollectionViewCell()
        }
        }
    }
    
    
