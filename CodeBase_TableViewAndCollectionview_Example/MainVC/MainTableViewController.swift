//
//  MainTableViewController.swift
//  CodeBase_TableViewAndCollectionview_Example
//
//  Created by 염성필 on 2023/08/25.
//

import UIKit

struct Book {
    var title: String
    var middle: String
    var description: String
}

class MainTableViewController: UIViewController {
    
    lazy var tableView = {
       let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 100
        tableView.register(MainTableViewCell.self, forCellReuseIdentifier: "MainVC")
        return tableView
    }()
    
    let books: [Book] = [
        Book(title: "일번", middle: "1231d" ,description: "132123123"),
        Book(title: "이번", middle: "eqweqwejijifdf", description: "ㅃㅈㄷㅂㅈㄷㅂㅈㄷ"),
        Book(title: "삼번", middle: "미들입니다.미들입니다.미들입니다.미들입니다.미들입니다.미들입니다.미들입니다.미들입니다.미들입니다.미들입니다.", description: "마지막입니다........"),
        Book(title: "사번", middle: "123",description: "ㅋㅌㅊㅋㅌㅊㅋㅌㅊ"),
        Book(title: "오번", middle: "asdasdas",description: "쇼ㅕ쇼ㅕ"),
        Book(title: "육번", middle: "ㅜ123123123312323ㅜ123123123312",description: "퓨ㅜ퓨ㅜ퓨ㅜ123123123312323ㅜ123123123312323ㅜ123123123312323")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        setNavigationBarColor()
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
       

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
        cell.middleLabel.text = books[indexPath.row].middle
        cell.descriptionLabel.text = books[indexPath.row].description
        return cell
    }
}

