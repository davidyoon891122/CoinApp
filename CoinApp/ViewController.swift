//
//  ViewController.swift
//  CoinApp
//
//  Created by David Yoon on 2022/07/24.
//

import UIKit
import Coinpaprika

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red

        Coinpaprika.API.ticker(id: "btc-bitcoin", quotes: [.krw, .btc]).perform { response in
            switch response {
            case .success(let ticker):
                print(ticker)
            case .failure(let error):
                print(error)
            }
        }
    }


}

