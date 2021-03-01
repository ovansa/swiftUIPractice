//
//  Sample.swift
//  SamplingTheUIs
//
//  Created by Muhammed Ibrahim on 23/02/2021.
//

import Foundation
import UIKit

class Sample: UIViewController {
    
//    lazy var contentViewSize = CGSize(width: scrollView.contentSize.width, height: UIScreen.main.bounds.height)
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: .zero)
        scrollView.backgroundColor = .white
        scrollView.frame = self.view.bounds
        scrollView.autoresizingMask = .flexibleHeight
        scrollView.showsVerticalScrollIndicator = false
        scrollView.bounces = true
        return scrollView
    }()
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.frame.size = CGSize(width: self.view.frame.width, height: UIScreen.main.bounds.height)
        return view
    }()
    
    let viewOne: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let viewTwo: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //
    //    let viewThree: UIView = {
    //        let view = UIView()
    //        view.backgroundColor = .systemPink
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        return view
    //    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        addViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        scrollView.contentSize = CGSize(width: scrollView.contentSize.width, height: viewOne.frame.height + viewTwo.frame.height)
        contentView.frame.size = CGSize(width: self.view.frame.width, height: viewOne.frame.height + viewTwo.frame.height)
        print("DEBUG: \(viewOne.frame.height + viewTwo.frame.height)")
    }
    
    private func addViews() {
        view.addSubview(scrollView)
        
        scrollView.addSubview(contentView)
        
        contentView.addSubview(viewOne)
        contentView.addSubview(viewTwo)
        
        NSLayoutConstraint.activate([
            viewOne.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            viewOne.heightAnchor.constraint(equalToConstant: 100),
            viewOne.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            viewOne.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            viewTwo.topAnchor.constraint(equalTo: viewOne.bottomAnchor, constant: 0),
            viewTwo.heightAnchor.constraint(equalToConstant: 900),
            viewTwo.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            viewTwo.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        
    }
    
    
}

