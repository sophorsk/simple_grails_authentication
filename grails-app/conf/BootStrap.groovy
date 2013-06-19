import authentication.Chat
import grails.converters.JSON
import authentication.User
import authentication.Profile

class BootStrap {

    def init = { servletContext ->
        /*
        Profile p = new Profile(
                firstName: "Sophors",
                lastName: "Khut",
                school: "Macalester College",
                location: "United States",
                interest: "Computer science, Mathematics, football",
                gender: "Male"
        )
        User u = new User(
                username: "skhut",
                password: "426815311",
                confirm: "426815311",
                passwordHashed: "426815311",
                profile: p
        )
        u.save(failOnError: true)
        */
    }
    def destroy = {
    }
}
