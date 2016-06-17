package learning.management

class UsersController {

    def create() {

    }

    def save() {
        println(params);
        session.count=session.count?:0
        session.count=session.count+1
        Map p=[firstName:params.firstName,lastName: params.lastName,email: params.Email ,age: params.age]
        Person sa=new Person(p);
        session.currentUser=sa
        session.Users = session.Users ?: []
        sa.save()
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
