package learning.management

class HelloController {

    def index() {
     render("Hello this is me")
    }

    def signup() {
        Map m = [firstName: "shubham", lastName: "jain S",Email:"Shubham-shubh1501@gmail.com", password:"Xyz"]
        return m
    }
    def register(){
        render(view: "signup")//use of render
    }
}
