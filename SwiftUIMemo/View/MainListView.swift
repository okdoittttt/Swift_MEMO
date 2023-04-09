//
//  MainListView.swift
//  SwiftUIMemo
//
//  Created by 손옥무 on 2023/04/09.
//

import SwiftUI

struct MainListView: View {
    @EnvironmentObject var store: MemoStore
    
    var body: some View {
        NavigationView {
            List(store.list) { memo in
                Memocell(memo: memo)
            }
            .listStyle(.plain)
            .navigationTitle("Memo")
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(MemoStore())
    }
}


