package authentication


class UserController {

    /**
     * This method assigns profile, username, password, and passwordHashed
     * for each user when they fill in the registration form. If the registration
     * fails, it render the registration again. If successes, it will render the
     * profile page.
     */
    def register = {
        // new user posts his registration details
        if (request.method == 'POST') {

            def u = new User()
            def p = new Profile()

            p.firstName = params.get("firstName")
            p.lastName = params.get("lastName")
            u.profile = p

            u.username = params.get("username")
            u.password = params.get("password")
            u.confirm = params.get("confirm")
            u.passwordHashed = u.password.encodeAsPassword()
            u.save(failOnError: true)

            if (! u.save()) {
                // if validation fails, render the register page
                return [user:u]
            } else {
                // validate/save ok, store user in session, redirect to homepage
                session.user = u
                render(view: "/profile/profile")
            }
        } else if (session.user) {
            // don't allow registration while user is logged in
            render(view: "/profile/profile")
        }
    }

    /**
     * This method takes care of login. When user fills in the login page,
     * It will find the user with the username and passwords user provided.
     * If it finds, then it will take the user to profile page. If username or
     * password don't match, it will say user not found.
     */
    def login = {
        if (request.method == 'POST') {
            def passwordHashed = params.password.encodeAsPassword()
            def u = User.findByUsernameAndPasswordHashed(params.username, passwordHashed)
            if (u) {
                // if username and password match, login successfully
                session.user = u
                // render profile page
                render(view: "/profile/profile")
            } else {
                // if fails, say user not found
                flash.message = "User not found"
                //log in again
                redirect(controller:'user', action:"login")
            }
        } else if (session.user) {
            // don't allow login while user is logged in
            render(view: "/profile/profile")
        }
    }

    /**
     * This method just logs out the user.
     */
    def logout = {
        session.invalidate()
        redirect(controller:'main', action: "home")

    }

    /**
     * This method allows user to edit his profile, and get new
     * values for the profile, and set it back the user. Then it
     * renders the profile page.
     */
    def editProfile = {
        // Check to see if the user is not attached to the current session
        if (!session.user.isAttached()) {
            // re-attach user to the persistence session of the current request
            session.user.attach()
        }
        def u = session.user

        def p = new Profile()
        p.firstName = params.get("firstName")
        p.lastName = params.get("lastName")
        p.gender = params.get("gender")
        p.school = params.get("school")
        p.location = params.get("location")
        p.interest = params.get("interest")

        u.profile = p
        u.save(failOnError: true)
        // render profile with user
        render(model: session.user, view: "/profile/profile")
    }
    /**
     * Returns list of all users
     */
    def list = {
        if (session.user) {
            def model = ['uwcuser': User.list()]
            render(model: model, view: 'list')
        } else {
            render("You need to log in to show the list of members")
        }
    }

    /**
     * Shows the information of a particular user, by rendering show.gsp
     */
    def show = {
        long id = User.findByUsername(params.id).id as long
        def user = User.findById(id)
        if (user ==  null) {
            throw new IllegalArgumentException("no user with id ${id}")
        }
        render(view: 'show', model:[user: user])
    }

    /**
     * Updates the status of the user, and render the profile page
     */
    def updateStatus = {
        if (!session.user.isAttached()) {
            session.user.attach()
        }
        def u = session.user

        u.status = params.get("status")
        u.save(failOnError: true)
        render(model: session.user, view: "/profile/profile")
    }

    /**
     * Delete account of a user
     */
    def deleteAccount = {
        long id = User.findByUsername(params.id).id as long
        def user = User.findById(id)
        if (user == null) {
            throw new IllegalArgumentException("no user with id ${id}")
        }
        user.delete()
        render(model: session.user, view: "/profile/profile")

    }
}