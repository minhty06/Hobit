import SwiftUI

struct NavBar: View {
    @StateObject private var viewModel = RoutineViewModel(routine: sampleRoutine)
    
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
                    Image(systemName: "plus")
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
    
    
    struct NavBar_Previews: PreviewProvider {
        static var previews: some View {
            NavBar().environmentObject(RoutineViewModel(routine: sampleRoutine))
        }
    }
}
