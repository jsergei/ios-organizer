//
//  HelloWorldViewController.swift
//  organizer
//
//  Created by Sergei Cherednichenko on 2/14/26.
//

import UIKit

class HelloWorldViewController: UIViewController {
    
    // MARK: - UI Components
    
    private lazy var globeImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "globe"))
        imageView.contentMode = .scaleAspectFit
        imageView.preferredSymbolConfiguration = UIImage.SymbolConfiguration(scale: .large)
        imageView.tintColor = view.tintColor
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var messageLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello, world! UIKit style"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var contentStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [globeImageView, messageLabel])
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
    }
    
    // MARK: - Setup
    
    private func setupView() {
        view.backgroundColor = .systemBackground
        view.addSubview(contentStackView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            contentStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            contentStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            contentStackView.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 16),
            contentStackView.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -16)
        ])
    }
}
