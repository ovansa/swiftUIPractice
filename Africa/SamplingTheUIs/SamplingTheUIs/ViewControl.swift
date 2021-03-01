//
//  ViewControl.swift
//  SamplingTheUIs
//
//  Created by Muhammed Ibrahim on 24/02/2021.
//

import UIKit

import UIKit

class ViewControl: UIViewController {
    let details: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque suscipit tempus est, vel imperdiet enim posuere sit amet. Duis interdum maximus dui sed tincidunt. Praesent at eleifend odio, vel ornare nulla. In id ligula hendrerit, tristique nulla quis, pretium tortor. Phasellus blandit metus vitae ante semper faucibus eu quis enim. Nunc vel eros et mauris eleifend bibendum. Suspendisse purus est, varius non dapibus laoreet, facilisis sit amet erat. Curabitur molestie in ligula sed mattis. Suspendisse consectetur orci a tincidunt pulvinar. Morbi at purus neque. Aliquam erat volutpat. Donec sed eros non enim eleifend dictum at vel nunc. Vestibulum rutrum tempor turpis at molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nunc sed viverra tellus, eget lobortis justo. Vestibulum euismod maximus odio, ac tristique mi porta ut. Vivamus non sapien vitae metus vulputate congue at a tellus. Pellentesque facilisis magna nisl, a rutrum enim malesuada nec. Donec imperdiet vel purus eget fringilla. Vivamus non odio laoreet, congue leo vitae, lobortis nulla. Nulla a ex id ex mattis accumsan sed ornare leo. Vestibulum sed fringilla augue, ut dignissim nunc. Vestibulum lobortis pharetra ex, quis rhoncus nulla porta sed. Fusce turpis nisi, rhoncus vel blandit a, euismod eget metus. Nullam at augue at metus dapibus aliquet. Pellentesque cursus tellus sit amet ex ultricies, a sodales ante hendrerit. Aliquam hendrerit bibendum facilisis. Cras scelerisque, urna ac mollis dictum, mi libero egestas tortor, sed venenatis elit nulla eu purus. Donec vel augue imperdiet odio sagittis lobortis a ac eros. Etiam scelerisque tellus nec quam condimentum sagittis. In congue eros a sodales interdum. In cursus interdum ipsum quis interdum. Quisque faucibus diam purus, eu molestie mi mattis a. Morbi varius neque urna, a scelerisque ligula mattis sit amet. Fusce ex turpis, semper in dapibus sit amet, laoreet sit amet mauris. Nulla non facilisis risus. Vivamus mattis quis magna a blandit. Nulla eget sagittis odio. Integer scelerisque lorem semper nunc congue porttitor. Proin euismod neque odio, vitae luctus felis posuere vel. Aenean et euismod nisi. Nunc tincidunt quis nunc quis venenatis. Fusce quis mollis lorem. Vivamus efficitur in nulla vel lacinia. Vestibulum nulla metus, elementum quis ex in, vulputate egestas nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nam mollis nisl eu tortor tincidunt, ac congue quam imperdiet. Nunc interdum turpis felis, a semper arcu malesuada ac. Ut porta non ipsum non imperdiet. Ut convallis magna nec felis ullamcorper, in laoreet dolor venenatis. Duis et nisl ornare, vulputate turpis ullamcorper, lobortis ante. Proin ut scelerisque libero."
    
    let mainView: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .brown
        let bottomOffset = CGPoint(x: 0, y: scrollView.contentSize.height - scrollView.bounds.height + scrollView.contentInset.bottom)
        scrollView.setContentOffset(bottomOffset, animated: true)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    let topView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.blue.withAlphaComponent(0.5)
        view.layer.cornerRadius = 10.0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let headerTitle: UILabel = {
        let label = UILabel()
        label.text = "Contact established with the best crew and the eventual."
        label.numberOfLines = 2
        label.font = UIFont(name: "Avenir-Medium", size: 20)
        label.textAlignment = .justified
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let imageView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.green
        view.layer.cornerRadius = 40 / 2
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let imageLabel: UILabel = {
        let label = UILabel()
        label.text = "Ovansa Mukhtar"
        label.font = UIFont(name: "Avenir-Medium", size: 15)
        label.textColor = UIColor.gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.text = "10 Jan, 2020"
        label.font = UIFont(name: "Avenir-Medium", size: 15)
        label.textColor = UIColor.gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    lazy var detailLabel: UILabel = {
        let label = UILabel()
        label.text = details
        label.font = UIFont(name: "Avenir-Medium", size: 15)
        label.numberOfLines = 0
        label.textColor = UIColor.gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addViews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("DEBUG: \(mainView.frame.size.height)")
        print("DEBUG: \(scrollView.contentSize.height - scrollView.bounds.height + scrollView.contentInset.bottom)")
    }
    
    private func addViews() {
        view.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 8),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8)
        ])
        
        scrollView.addSubview(mainView)
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            mainView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            mainView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            mainView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -8)
        ])
        
        mainView.addSubview(topView)
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 40),
            topView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 7),
            topView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -7),
            topView.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        mainView.addSubview(headerTitle)
        NSLayoutConstraint.activate([
            headerTitle.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 10),
            headerTitle.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 15),
            headerTitle.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -15)
        ])
        
        mainView.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: headerTitle.bottomAnchor, constant: 10),
            imageView.leadingAnchor.constraint(equalTo: headerTitle.leadingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 40.0),
            imageView.widthAnchor.constraint(equalToConstant: 40.0),
        ])
        
        mainView.addSubview(imageLabel)
        NSLayoutConstraint.activate([
            imageLabel.centerYAnchor.constraint(equalTo: imageView.centerYAnchor),
            imageLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 10.0)
        ])
        
        mainView.addSubview(dateLabel)
        NSLayoutConstraint.activate([
            dateLabel.centerYAnchor.constraint(equalTo: imageView.centerYAnchor),
            dateLabel.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -15.0)
        ])
        
        mainView.addSubview(detailLabel)
        NSLayoutConstraint.activate([
            detailLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            detailLabel.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            detailLabel.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        ])
    }
}
