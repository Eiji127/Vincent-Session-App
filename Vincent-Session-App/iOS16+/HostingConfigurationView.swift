//
//  HostingConfigurationView.swift
//  Vincent-Session-App
//
//  Created by eiji.shirakazu on 2025/04/11.
//

import UIKit
import SwiftUI

class HostingConfigurationTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(HostingConfigurationTableViewCell.self, forCellReuseIdentifier: HostingConfigurationTableViewCell.identifier)

        view.backgroundColor = .systemBackground
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HostingConfigurationTableViewCell.identifier, for: indexPath) as! HostingConfigurationTableViewCell

        let hostingConfiguration = UIHostingConfiguration {
            HStack {
                Image(systemName: "\(indexPath.row).circle.fill")
                    .foregroundColor(.gray)
                    .font(.headline)

                Text("Row \(indexPath.row)")
                    .font(.headline)
                    .foregroundColor(.blue)

                Spacer()

                Button("Add to Cart") {

                }
                .buttonStyle(.bordered)
            }
            .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                Button(role: .destructive) {
                    print("Delete")
                } label: {
                    Label("Delete", systemImage: "trash")
                        .foregroundColor(.red)
                }
            }
            .swipeActions(edge: .leading, allowsFullSwipe: true) {
                Button(role: .cancel) {
                    print("Interested")
                } label: {
                    Label("Interested", systemImage: "eye")
                }
            }
        }



        cell.contentConfiguration = hostingConfiguration

        return cell
    }
}

class HostingConfigurationTableViewCell: UITableViewCell {
    static let identifier = "HostingConfigurationTableViewCell"

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .systemBackground
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct HostingConfigurationView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> HostingConfigurationTableViewController {
        return HostingConfigurationTableViewController()
    }

    func updateUIViewController(_ uiViewController: HostingConfigurationTableViewController, context: Context) {}
}

#Preview {
    HostingConfigurationView()
}
