package learning.management

class UsersController {

    def create() {

    }

    def save() {
        Map p=[firstName:params.firstName,lastName: params.lastName,email: params.Email ,age: params.age]
        Person sa=new Person(p)
        sa.save()

        //redirect(action: "view", id: sa.id, params: [date: 17])
        redirect(action: "list")
    }
    def view() {
        Person myUser = Person.get(params.id)
        return[currentUsersDetails: myUser]
    }
    def list() {
        return [users: Person.list()]
    }
    def edit(){
        println(params)
    return[edit1:Person.get(params.id)]
    }
    def update(){
        println("Received Parameter To Update:${params}")
        Person myPerson=Person.get(params.id)
        myPerson.firstName=params.firstName
        myPerson.lastName=params.lastName
        myPerson.email=params.Email
        myPerson.age=params.age
        myPerson.save(flush: true);
        redirect(action: "list")
    }
    def delete(){
        Person  personInstance=Person.get(params.id)
        personInstance.delete(flush: true)
        redirect(action:"list")
    }
}
