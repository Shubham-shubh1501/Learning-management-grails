package learning.management

class Person {
    String firstName
    String lastName
    String email
    int   age
    static constraints = {
        firstName(blank: false, matches: "[a-zA-Z]+")
        lastName(blank: false, matches: "[a-zA-Z]+")
        email(email: true)
        age(max: 150)
    }
}
