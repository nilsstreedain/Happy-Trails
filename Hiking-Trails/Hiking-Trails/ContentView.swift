//
//  ContentView.swift
//  Hiking-Trails
//
//  Created by Nils Streedain on 10/27/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
	var body: some View {
		TabView() {
			TrailView()
				.tabItem {
					Label("Trails", systemImage: "signpost.right.and.left.fill")
				}
			LiveHikeView()
				.tabItem {
					Label("Start Hike", systemImage: "map")
				}
			Text("Profile")
				.font(.system(size: 30, weight: .bold, design: .rounded))
				.tabItem {
					Label("Profile", systemImage: "person.crop.circle.fill")
				}
		}.onAppear() {
			UITabBar.appearance().scrollEdgeAppearance = UITabBarAppearance()
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
	}
}
