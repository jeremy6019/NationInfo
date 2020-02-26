//
//  ViewController.swift
//  NationInfo
//
//  Created by 503 on 2020/02/26.
//  Copyright © 2020 ssang. All rights reserved.
//

import UIKit

//나라정보를 담을 구조체 선언
struct Nation{
    var url:String // 이미지명
    var name:String
    var city:String
    var rank:Int
}

class ViewController: UIViewController {
    
    // 구조체를 담게될 배열 선언
    var nationArray:Array = Array<Nation>()
    var index:Int=0
        
    @IBOutlet weak var nat_flag: UIImageView!
    @IBOutlet weak var nat_name: UITextField!
    @IBOutlet weak var nat_city: UITextField!
    @IBOutlet weak var nat_ranking: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let amec = Nation(url:"1.png",name:"USA", city:"워싱턴", rank:7)
        let mal = Nation(url:"2.jpg", name:"말레이시아", city:"쿠알라룸프르", rank:73)
        let gre = Nation(url:"3.jpg",name:"그리스", city:"아테네", rank:41)
        let brt = Nation(url:"4.png",name:"영국", city:"런던", rank:21)
        let ger = Nation(url:"5.jpg",name:"독일", city:"베를린", rank:16)
        let esp = Nation(url:"6.png",name:"스페인", city:"마드리드", rank:30)
        let frc = Nation(url:"7.jpg",name:"프랑스", city:"파리", rank:20)
        let rus = Nation(url:"8.gif",name:"러시아", city:"모스크바", rank:63)
        let brz = Nation(url:"9.png",name:"브라질", city:"상파울루", rank:74)
        let cnd = Nation(url:"10.jpg",name:"캐나다", city:"오타와", rank:17)
        
        nationArray.append(amec)
        nationArray.append(mal)
        nationArray.append(gre)
        nationArray.append(brt)
        nationArray.append(ger)
        nationArray.append(esp)
        nationArray.append(frc)
        nationArray.append(rus)
        nationArray.append(brz)
        nationArray.append(cnd)
        
        
    }

    @IBAction func btnClick(_ sender: Any) {
        goNext()
    }
    
    func goNext(){
        nat_flag.image = UIImage(named: nationArray[index].url)
             
        nat_name.text = nationArray[index].name
             
        nat_city.text = nationArray[index].city
             
        nat_ranking.text = String(nationArray[index].rank)
             
        if index == nationArray.count-1{
            index = 0
        }else{
            index += 1
        }

    }
    
}

