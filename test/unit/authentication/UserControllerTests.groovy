package authentication



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@Mock([User, UserController])
@TestFor(UserController)
class UserControllerTests {
    /**
    void testLogout() {
        session['user'] = "user"

        UserController lc = new UserController()
        assertNull(lc.session.user)

        lc.logout()

        assertEquals(session.user, false)

    } **/
    /**
    void testRegistration() {
        params.method = "POST"
        def u = new User()
        def p = new Profile()

        p.firstName = "sophors"
        p.lastName = "khut"
        u.profile = p

        u.username = "skhut"
        u.password = "12345"
        u.confirm = "12345"
        u.passwordHashed = "12345"

        u.save(failOnError: true)

        def con = new UserController()
        def model = con.register()

        assertNotNull(session.user)

    }  **/
}
