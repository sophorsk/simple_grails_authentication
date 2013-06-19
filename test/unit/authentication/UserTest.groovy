package authentication

import grails.test.mixin.Mock
import grails.test.mixin.TestFor

@Mock(User)
@TestFor(User)
class UserTest {

    void testUserVariables () {

        Profile p = new Profile(
                firstName: "sophors",
                lastName: "khut",
                school: "macalester",
                location: "usa",
                interest: "computer scinece",
                gender:"male"
        )
        User u = new User(
                username: "skhut",
                password: "1234",
                confrim: "1234",
                passwordHashed: "1234",
                status: "I am happy."
        )
        u.profile = p
        u.save(failOnError: true)

        User u1 = User.findByUsername("skhut")

        assertEquals(u1.profile.firstName, "sophors")
        assertEquals(u1.profile.lastName, "khut")
        assertEquals(u1.username, "skhut")
        assertEquals(u1.profile, p)
    }
}
