package learning.management

class UsersController {

    def create() {

    }

    def save() {
        println(params);
        session.count=session.count?:0
        session.count=session.count+1
        Map p=[myFirstName:params.firstName,myLastName: params.lastName,myEmail: params.Email ,myAge: params.age,count: session.count]
        SaveContent sa=new SaveContent(p);
        session.currentUser=sa
        session.Users = session.Users ?: []

        session.Users.add(sa)
        redirect(action:"view")
    }
    def view() {
        return[currentUsersDetails: session.currentUser]
    }
    def list() {
        return [users: session.Users]
    }
}
