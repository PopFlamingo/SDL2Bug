import Foundation
import CSDL2

guard SDL_Init(SDL_INIT_VIDEO) != -1 else {
    fatalError("SDL INIT error")
}
let title = "Codenames".cString(using: .utf8)!


SDL_CreateWindow(title, 50, 50, 500, 300, SDL_WINDOW_OPENGL.rawValue | SDL_WINDOW_RESIZABLE.rawValue)


var shouldContinue = true
var eventPtr = SDL_Event()
while shouldContinue {
    SDL_WaitEvent(&eventPtr)
    if eventPtr.type == SDL_QUIT.rawValue {
        shouldContinue = false
    }
}


SDL_Quit()
