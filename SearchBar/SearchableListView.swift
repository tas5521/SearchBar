//
//  SearchableListView.swift
//  SearchBar
//
//  Created by 寒河江彪流 on 2024/02/05.
//

import SwiftUI

struct SearchableListView: View {
    // 　検索キーワード
    @State private var keyword: String = ""
    // リストに表示するワード
    private let fruitsList: [String] = ["Apple", "Banana", "Cherry", "Lemon", "Orange"]
    
    var body: some View {
        VStack {
            // 検索バー
            SearchBar(searchText: $keyword, placeholderText: "キーワードを入力してください")
                .padding(.vertical)
            // リスト
            List {
                ForEach(fruitsList, id: \.self) { fruits in
                    if keyword.isEmpty {
                        // キーワードが入力されていない場合、全件表示
                        Text(fruits)
                    } else if fruits.contains(keyword) {
                        // キーワードが入力されている場合、条件に合うものを表示
                        Text(fruits)
                    } // if ここまで
                } // ForEach ここまで
            } // List ここまで
        } // VStack ここまで
    } // body ここまで
} // ContentView ここまで

#Preview {
    SearchableListView()
}
