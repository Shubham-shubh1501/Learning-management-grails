package learning.management

class FormController {

    def saveUser() {
        println"saveUser action executed"
        println"Parameters received"
        Map p=[fname: params.firstName,lname: params.lastName,eml: params.Email ,age: params.age]
        User myUser=new User(p);
        myUser.myTask();
        return [recentlySavedUser: myUser]
    }

}
