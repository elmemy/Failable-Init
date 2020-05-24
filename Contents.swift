import UIKit

var str = "Hello, playground"


enum Udemyerror:Error{
    case noName
}

struct UdemyCourse{
    let name:String
    init(name:String) throws{
        if name.isEmpty {
            throw Udemyerror.noName
        }
        self.name = name
    }
    
}


do{
    let myCourse = try UdemyCourse.init(name: "")
    myCourse.name
}catch Udemyerror.noName{
    print("No Course found")
}



enum CourseError:Error{
    case noNmae
    case noColor
}
struct Courses {
    let name:String
    let color :String
    init(name:String,color:String) throws{
        if name.isEmpty{
            throw CourseError.noNmae
        }else if color.isEmpty{
            throw CourseError.noColor
        }
        self.name = name
        self.color = color
    }
}


do{
    let Course = try Courses.init(name: "", color: "red")
    Course.name
    Course.color
}catch CourseError.noNmae{
    print("No Name Found")
}catch CourseError.noColor{
    print("No Color Found")
}
