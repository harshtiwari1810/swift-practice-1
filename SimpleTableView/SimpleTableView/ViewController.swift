//
//  ViewController.swift
//  SimpleTableView
//
//  Created by Anarock on 04/04/23.
//

import UIKit

class ViewController: UIViewController {
    

    
    struct iphone{
        let title: String
        let imageName: String
    }
    
    let data: [iphone] = [
        iphone(title: "iphone 12b asdfghjklfrgtyhjrftgtgtgtygyygyygygygygygygygygefytagsfhjzmVchjvghwjeafcshjvcghasjHMVZFcdghsavsHAVDghqwxanSCdvghxsZBdvghansczdghvasHJGFZCvgsjsfdkuywefsayuvzdtgqwfgyfvcq", imageName: "i12"),
        iphone(title: "iPhone13iyefwgkulajszasdfghjklfrgtyhjrftgtgtgtygyygyygygygygygygygygefytagsfhjzmVchjvghwjeafcshjvcghasjHMVZFcdghsavsHAVDghqwxanSCdvghxsZBdvghansczdghvasHJGFZCvgsjsfdkuywefsayuvzdtgqwfgyfvcqasdfghjklfrgtyhjrftgtgtgtygyygyygygygygygygygygefytagsfhjzmVchjvghwjeafcshjvcghasjHMVZFcdghsavsHAVDghqwxanSCdvghxsZBdvghansczdghvasHJGFZCvgsjsfdkuywefsayuvzdtgqwfgyfvcqasdfghjklfrgtyhjrftgtgtgtygyygyygygygygygygygygefytagsfhjzmVchjvghwjeafcshjvcghasjHMVZFcdghsavsHAVDghqwxanSCdvghxsZBdvghansczdghvasHJGFZCvgsjsfdkuywefsayuvzdtgqwfgyfvcqhfbjkxejkdsbvgi;ua;GFbhleiwsbfILUWEAFJBUYHEWJGUYAEHGFBCLHWSEAZFKCGVBWELUYS FHLWEBVFHJEBC HFJBFHIBWEJFBCIHEFBCJWEKBFHEISBFJKBESHZGBJVKBGESLJIUFGBHJKSBDV CLSHVBJKSBV LIUWEHBVEJHIBFHIJLEBWFEHJ", imageName: "i13"),
        iphone(title: "iPhone14FJHESHKDVBFJKGEWBSJKLBV IJEWBVIJHBFHJWBHISBFBWEIHBF HJ UHVFD JHF VHEWAVHV DFJFJE UG HC FDHEBFCC  HGHA CJHA CJH C", imageName: "i14"),
        iphone(title: "iPhone SE", imageName: "se"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .purple
    }
    
    
}

