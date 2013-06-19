package authentication

class MainController {

    def index() { }

    /**
     * Renders home.gsp
     * @return
     */
    def home() {
        render(view: "home")
    }
    /**
     * Renders what_is_uwc.gsp
     * @return
     */
    def what_is_uwc(){
        render(view: "what_is_uwc")
    }
    /**
     * Renders what_do_we_do.gsp
     * @return
     */
    def what_do_we_do(){
        render(view: "what_do_we_do")
    }
    /**
     * Renders apply.gsp
     * @return
     */
    def apply() {
        render(view: "apply")
    }

    /**
     * Renders gallery.gsp
     * @return
     */
    def gallery() {
        render(view: "gallery")
    }
    /**
     * Renders contact.gsp
     * @return
     */
    def contact() {
        render(view: "contact")
    }
}
