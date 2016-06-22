package learning.management

class UsersController {

    def create(){
        [MyUser: new Person()]
    }

    def save() {
        Map p=[firstName:params.firstName,lastName: params.lastName,email: params.Email ,age: params.age]
        params.age=params.age.toInteger()
        Person sa=new Person(p)
        sa.save()
        if(sa.hasErrors()){
            render(view:"create", model:[MyUser:sa])
            return
        }
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
    def search(){

    }
    def test() {
        println params
        if(params.age){
            params.age=params.age.toInteger()

        }
        List Persons
        if (params.email && !params.age){

            Persons=Person.findAllByEmailLike("%${params.email}%")
        }
        else if (params.email && params.age && params.ageType=="Exact"){

            Persons=Person.findAllByEmailIlikeAndAge("%${params.email}%", params.age)
        }
        else if (params.email && params.age && params.ageType=="Greater"){

            Persons=Person.findAllByEmailIlikeAndAgeGreaterThan("%${params.email}%", params.age)
        }
        else if (params.email && params.age && params.ageType=="Lesser"){

            Persons=Person.findAllByEmailIlikeAndAgeLessThan("%${params.email}%",params.age)
        }
        else if (!params.email && params.age && params.ageType=="Exact"){

            Persons=Person.findAllByAge(params.age)
        }
        else if (!params.email && params.age && params.ageType=="Greater"){

            Persons=Person.findAllByAgeGreaterThan(params.age)
        }
        else if (!params.email && params.age && params.ageType=="Lesser"){

            Persons=Person.findAllByAgeLessThan(params.age)
        }
        return([searchPerson: Persons])
    }
}
