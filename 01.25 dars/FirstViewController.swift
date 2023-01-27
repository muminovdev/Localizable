//
//  FirstViewController.swift
//  01.25 dars
//
//  Created by Mac on 26/01/23.
//

import UIKit

class FirstViewController: UIViewController {
    let label = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let label4 = UILabel()
    let imageru = UIImageView()
    let imageuz = UIImageView()
    let imageen = UIImageView()
    let butoon = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    let button4 = UIButton()
    let image = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        
        button2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button2)
        button2.topAnchor.constraint(equalTo: view.topAnchor, constant: 70).isActive = true
        button2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        button2.widthAnchor.constraint(equalToConstant: 50).isActive = true
        button2.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button2.backgroundColor = .systemGray5
        button2.layer.cornerRadius = 25
        button2.clipsToBounds = (YESSTR != 0)
       button2.addTarget(self, action: #selector(buttonTap1), for: .touchUpInside)

        
        button3.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button3)
        button3.topAnchor.constraint(equalTo: view.topAnchor, constant: 70).isActive = true
        button3.leftAnchor.constraint(equalTo: button2.rightAnchor, constant: 10).isActive = true
        button3.widthAnchor.constraint(equalToConstant: 50).isActive = true
        button3.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button3.backgroundColor = .systemGray5
        button3.layer.cornerRadius = 25
        button3.clipsToBounds = (YESSTR != 0)
//        button3.addTarget(self, action: #selector(buttonTap2), for: .touchUpInside)

        
        button4.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button4)
        button4.topAnchor.constraint(equalTo: view.topAnchor, constant: 70).isActive = true
        button4.leftAnchor.constraint(equalTo: button3.rightAnchor, constant: 10).isActive = true
        button4.widthAnchor.constraint(equalToConstant: 50).isActive = true
        button4.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button4.backgroundColor = .systemGray5
        button4.layer.cornerRadius = 25
        button4.clipsToBounds = (YESSTR != 0)
//        button4.addTarget(self, action: #selector(buttonTap3), for: .touchUpInside)
        
        
        image.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(image)
        image.topAnchor.constraint(equalTo: button3.bottomAnchor, constant: 20).isActive = true
        image.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        image.heightAnchor.constraint(equalToConstant: 250).isActive = true
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true
        image.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        image.image = UIImage(named: "ras")
        
        imageru.translatesAutoresizingMaskIntoConstraints = false
        button2.addSubview(imageru)
        imageru.centerXAnchor.constraint(equalTo: button2.centerXAnchor).isActive = true
        imageru.centerYAnchor.constraint(equalTo: button2.centerYAnchor).isActive = true
        imageru.heightAnchor.constraint(equalToConstant: 20).isActive = true
        imageru.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageru.image = UIImage(named: "ru")
        
        imageen.translatesAutoresizingMaskIntoConstraints = false
        button3.addSubview(imageen)
        imageen.centerXAnchor.constraint(equalTo: button3.centerXAnchor).isActive = true
        imageen.centerYAnchor.constraint(equalTo: button3.centerYAnchor).isActive = true
        imageen.heightAnchor.constraint(equalToConstant: 20).isActive = true
        imageen.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageen.image = UIImage(named: "us")
        
        imageuz.translatesAutoresizingMaskIntoConstraints = false
        button4.addSubview(imageuz)
        imageuz.centerXAnchor.constraint(equalTo: button4.centerXAnchor).isActive = true
        imageuz.centerYAnchor.constraint(equalTo: button4.centerYAnchor).isActive = true
        imageuz.heightAnchor.constraint(equalToConstant: 20).isActive = true
        imageuz.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageuz.image = UIImage(named: "uz")
        
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        label.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 20).isActive = true
        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        label.text = "Xush kelibsiz!".localized()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 50)
        
        label2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label2)
        label2.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10).isActive = true
        label2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        label2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        label2.text = "Ushbu ilova orqali siz Yewoodan istalgan mazali taomga buyurtma berishingiz mumkin.Buyurtma qisqa vaqt ichida yetib boradi.".localized()
        label2.numberOfLines = 0
        label2.font = .systemFont(ofSize: 20)
        label2.textAlignment = .center
        label2.textColor = .gray
        
        butoon.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(butoon)
        butoon.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 10).isActive = true
        butoon.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        butoon.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        butoon.heightAnchor.constraint(equalToConstant: 50).isActive = true
        butoon.backgroundColor = .systemYellow
//        butoon.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)

        label3.translatesAutoresizingMaskIntoConstraints = false
        butoon.addSubview(label3)
        label3.centerXAnchor.constraint(equalTo: butoon.centerXAnchor).isActive = true
        label3.centerYAnchor.constraint(equalTo: butoon.centerYAnchor).isActive = true
        label3.text = "Tizimga kirish".localized()
        label3.font = .systemFont(ofSize: 25)
        label3.textColor = .black
        
        label4.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label4)
        label4.topAnchor.constraint(equalTo: butoon.bottomAnchor, constant: 10).isActive = true
        label4.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        label4.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        label4.text = "Avvalo tizimga kirish kerak".localized()
        label4.textAlignment = .center
        label4.font = .systemFont(ofSize: 20)
        label4.textColor = .gray

    }
//    @objc func buttonTap() {
////        print("hello".localized())
//
//        if "hello".localized() == "hello" {
//            Bundle.setLanguage(lang: "uz")
//            label.text = "Xush kelibsiz!".localized(); label2.text = "Ushbu ilova orqali siz Yewoodan istalgan mazali taomga buyurtma berishingiz mumkin.Buyurtma qisqa vaqt ichida yetib boradi."; label3.text = "Tizimga kirish"; label4.text = "Avvalo tizimga kirish kerak"
////            print("hello".localized())
//        }
//        else{
//            Bundle.setLanguage(lang: "en")
//            label.text = "hello".localized()
//       }
//    }
    @objc func buttonTap1() {
        if "Welcome!".localized() == "Welcome!" {
            Bundle.setLanguage(lang: "uz")
            label.text = "Xush kelibsiz!"
        }
        else if "Through this application, you can order any delicious food from Yewo. The order will arrive in a short time.".localized() == "Through this application, you can order any delicious food from Yewo. The order will arrive in a short time." {
            Bundle.setLanguage(lang: "uz")
            label2.text = "Ushbu ilova orqali siz Yewoodan istalgan mazali taomga buyurtma berishingiz mumkin.Buyurtma qisqa vaqt ichida yetib boradi."
        }
        
    }
    

}
extension Bundle {
    private static var bundle: Bundle!

    public static func localizedBundle() -> Bundle! {
        if bundle == nil {
            let appLang = UserDefaults.standard.string(forKey: "app_lang") ?? "en"
            let path = Bundle.main.path(forResource: appLang, ofType: "lproj")
            bundle = Bundle(path: path!)
        }

        return bundle;
    }

    public static func setLanguage(lang: String) {
        UserDefaults.standard.set(lang, forKey: "app_lang")
        let path = Bundle.main.path(forResource: lang, ofType: "lproj")
        bundle = Bundle(path: path!)
    }
}

extension String {
    func localized() -> String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.localizedBundle(), value: "", comment: "")
    }

    func localizeWithFormat(arguments: CVarArg...) -> String{
        return String(format: self.localized(), arguments: arguments)
    }
}
