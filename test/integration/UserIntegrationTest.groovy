package authentication

import org.junit.*
import static org.junit.Assert.*

class UserIntegrationTest {

    @Before
    void setUp() {
        // Setup logic here
    }

    @After
    void tearDown() {
        // Tear down logic here
    }
    @Test
    void testSomething2() {

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

        Profile p1 = new Profile(
                firstName: "leang",
                lastName: "ouch",
                school: "macalester",
                location: "usa",
                interest: "computer scinece",
                gender:"male"
        )
        User u1 = new User(
                username: "leang",
                password: "1234",
                confrim: "1234",
                passwordHashed: "1234",
                status: "I am happy."
        )
        u1.profile = p1
        u1.save(failOnError: true)

        assertEquals(u1.username, "leang")
        assertEquals(User.count(), 2)

        u1.delete(flush: true)
        assertEquals(User.count(), 1)

    }

}