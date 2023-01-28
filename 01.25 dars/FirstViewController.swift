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
    let imageUz = UIImageView()
    let imageen = UIImageView()
    let buttonSignIn = UIButton()
    let buttonRu = UIButton()
    let buttonEn = UIButton()
    let buttonUz = UIButton()
    let image = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        navigationController?.navigationBar.isHidden = true
        
        buttonRu.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonRu)
        buttonRu.tag = 7
        buttonRu.topAnchor.constraint(equalTo: view.topAnchor, constant: 70).isActive = true
        buttonRu.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        buttonRu.widthAnchor.constraint(equalToConstant: 50).isActive = true
        buttonRu.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonRu.backgroundColor = .systemGray5
        buttonRu.layer.cornerRadius = 25
        buttonRu.addTarget(self, action: #selector(buttonLanTap(_:)), for: .touchUpInside)
        
        
        buttonEn.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonEn)
        buttonEn.tag = 9
        buttonEn.topAnchor.constraint(equalTo: view.topAnchor, constant: 70).isActive = true
        buttonEn.leftAnchor.constraint(equalTo: buttonRu.rightAnchor, constant: 10).isActive = true
        buttonEn.widthAnchor.constraint(equalToConstant: 50).isActive = true
        buttonEn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonEn.backgroundColor = .systemGray5
        buttonEn.layer.cornerRadius = 25
        buttonEn.addTarget(self, action: #selector(buttonLanTap(_:)), for: .touchUpInside)
        
        
        buttonUz.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonUz)
        buttonUz.tag = 5
        buttonUz.topAnchor.constraint(equalTo: view.topAnchor, constant: 70).isActive = true
        buttonUz.leftAnchor.constraint(equalTo: buttonEn.rightAnchor, constant: 10).isActive = true
        buttonUz.widthAnchor.constraint(equalToConstant: 50).isActive = true
        buttonUz.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonUz.backgroundColor = .systemGray5
        buttonUz.layer.cornerRadius = 25
        buttonUz.addTarget(self, action: #selector(buttonLanTap(_:)), for: .touchUpInside)
        
        image.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(image)
        image.topAnchor.constraint(equalTo: buttonEn.bottomAnchor, constant: 20).isActive = true
        image.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        image.heightAnchor.constraint(equalToConstant: 250).isActive = true
        image.contentMode = .scaleAspectFit
        image.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        image.image = UIImage(named: "taom")
        
        imageru.translatesAutoresizingMaskIntoConstraints = false
        buttonRu.addSubview(imageru)
        imageru.centerXAnchor.constraint(equalTo: buttonRu.centerXAnchor).isActive = true
        imageru.centerYAnchor.constraint(equalTo: buttonRu.centerYAnchor).isActive = true
        imageru.heightAnchor.constraint(equalToConstant: 20).isActive = true
        imageru.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageru.image = UIImage(named: "ru")

        imageen.translatesAutoresizingMaskIntoConstraints = false
        buttonEn.addSubview(imageen)
        imageen.centerXAnchor.constraint(equalTo: buttonEn.centerXAnchor).isActive = true
        imageen.centerYAnchor.constraint(equalTo: buttonEn.centerYAnchor).isActive = true
        imageen.heightAnchor.constraint(equalToConstant: 20).isActive = true
        imageen.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageen.image = UIImage(named: "us")

        imageUz.translatesAutoresizingMaskIntoConstraints = false
        buttonUz.addSubview(imageUz)
        imageUz.centerXAnchor.constraint(equalTo: buttonUz.centerXAnchor).isActive = true
        imageUz.centerYAnchor.constraint(equalTo: buttonUz.centerYAnchor).isActive = true
        imageUz.heightAnchor.constraint(equalToConstant: 20).isActive = true
        imageUz.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageUz.image = UIImage(named: "uz")
        
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        label.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 20).isActive = true
        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        label.text = "wcm".localized()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 30)
        
        label2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label2)
        label2.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10).isActive = true
        label2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        label2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        label2.text = "aboutApp".localized()
        label2.numberOfLines = 0
        label2.font = .systemFont(ofSize: 20)
        label2.textAlignment = .center
        label2.textColor = .gray
        
        buttonSignIn.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonSignIn)
        buttonSignIn.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 10).isActive = true
        buttonSignIn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        buttonSignIn.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        buttonSignIn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonSignIn.backgroundColor = .systemYellow
        buttonSignIn.layer.cornerRadius = 15
        buttonSignIn.addTarget(self, action: #selector(signInTap), for: .touchUpInside)
        
        label3.translatesAutoresizingMaskIntoConstraints = false
        buttonSignIn.addSubview(label3)
        label3.centerXAnchor.constraint(equalTo: buttonSignIn.centerXAnchor).isActive = true
        label3.centerYAnchor.constraint(equalTo: buttonSignIn.centerYAnchor).isActive = true
        label3.text = "login".localized()
        label3.font = .systemFont(ofSize: 25)
        label3.textColor = .label
        
        label4.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label4)
        label4.topAnchor.constraint(equalTo: buttonSignIn.bottomAnchor, constant: 10).isActive = true
        label4.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        label4.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        label4.text = "warn".localized()
        label4.textAlignment = .center
        label4.font = .systemFont(ofSize: 20)
        label4.textColor = .gray
        
    }
    
    @objc func buttonLanTap(_ button: UIButton) {
        Bundle.setLanguage(lang: button.tag == 7 ? "ru" : (button.tag == 9 ? "en" : "uz"))
        label.text = "wcm".localized()
        label2.text = "aboutApp".localized()
        label3.text = "login".localized()
        label4.text = "warn".localized()
    }
    
    @objc func signInTap() {
        print("hello")
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
