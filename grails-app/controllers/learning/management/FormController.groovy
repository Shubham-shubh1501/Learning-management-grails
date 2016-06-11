package learning.management

class FormController {

    def index() {

        println(params)
        println"Thank you for signup"
        redirect(controller: "form",action: "Thankyou", params:[name: "you"])

    }
    def Thankyou() {
     render ("Thank You for ur signup")
    }
}
