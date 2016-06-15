package learning.management

class UsersController {

    def create() {

    }
    def x;
    def save() {
        println(params);

        x=x ?(++x):1
        println("x = ${x}");

        Map p=[myFirstName:params.firstName,myLastName: params.lastName,myEmail: params.Email ,myAge: params.age,count: x]
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
