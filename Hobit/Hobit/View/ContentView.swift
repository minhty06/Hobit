import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = HobitViewModel()
    
    var body: some View {
        TabView{
            
            HomeView()
                .environmentObject(viewModel)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            RoutineView()
                .environmentObject(viewModel)
                .tabItem {
                    Image(systemName: "clock.badge.checkmark")
                    Text("Routine")
                }
                        
            AddView()
                .environmentObject(viewModel)
                
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                    Text("Add New")
                }
            
            HabitView()
                .environmentObject(viewModel)
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Habit")
                }
            
            GoalView()
                .environmentObject(viewModel)
                .tabItem {
                    Image(systemName: "target")
                    Text("Goal")
                }
                
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView().environmentObject(HobitViewModel())
        }
    }
}
