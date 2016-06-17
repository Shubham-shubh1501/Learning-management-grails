package learning.management

class UsersController {

    def create() {

    }

    def save() {
        Map p=[firstName:params.firstName,lastName: params.lastName,email: params.Email ,age: params.age]
        Person sa=new Person(p)
        sa.save()

        //redirect(action: "view", id: sa.id, params: [date: 17])
        redirect(action: "view", params: [id: sa.id, date: 17])
    }
    def view() {
        Person myUser = Person.get(params.id)
        return[currentUsersDetails: myUser]
    }
    def list() {
        return [users: Person.list()]
    }
}
