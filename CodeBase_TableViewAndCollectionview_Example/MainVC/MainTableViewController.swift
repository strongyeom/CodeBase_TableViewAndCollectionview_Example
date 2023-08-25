//
//  MainTableViewController.swift
//  CodeBase_TableViewAndCollectionview_Example
//
//  Created by 염성필 on 2023/08/25.
//

import UIKit

struct Book {
    var title: String
    var description: String
}

class MainTableViewController: UIViewController {
    
    let tableView = UITableView()
    
    let books: [Book] = [
        Book(title: "일번", description: "132123123"),
        Book(title: "이번", description: "ㅃㅈㄷㅂㅈㄷㅂㅈㄷ"),
        Book(title: "삼번", description: "ㅁㄴㅇㅁㄴㅇㅁㄴㅇ"),
        Book(title: "사번", description: "ㅋㅌㅊㅋㅌㅊㅋㅌㅊ"),
        Book(title: "오번", description: "쇼ㅕ쇼ㅕ"),
        Book(title: "육번", description: "퓨ㅜ퓨ㅜ퓨ㅜ123123123312323ㅜ123123123312323ㅜ123123123312323")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        setNavigationBarColor()
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 100
        tableView.register(MainTableViewCell.self, forCellReuseIdentifier: "MainVC")
    }
    
    func setNavigationBarColor() {
        // 네비게이션 상단 바 배경색 지정 및 맨끝 상단까지(scrollEdgeAppearance or standardAppearance) 색상 적용
        let appearance = UINavigationBarAppearance()
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.backgroundColor = .darkGray
    }
}

extension MainTableViewController : UITableViewDelegate {
    
}

extension MainTableViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainVC") as! MainTableViewCell
        cell.titlelabel.text = books[indexPath.row].title
        cell.descriptionLabel.text = books[indexPath.row].description
        return cell
    }
}

