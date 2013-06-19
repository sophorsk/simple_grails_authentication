package authentication



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@Mock(Profile)
@TestFor(Profile)
class ProfileTests {

    void testProfile() {

        def p = new Profile(
                firstName: "sophors",
                lastName: "khut",
                school: "macalester",
                location: "usa",
                interest: "computer scinece",
                gender:"male"
        )

        //p.save(failOnError: true)
        //Profile p1 = p
        User u = new User(
                username: "skhut",
                password: "1234",
                confrim: "1234",
                passwordHashed: "1234",
                status: "I am happy."
        )
        u.profile = p
        u.save(failOnError: true)
        Profile p1 = u.profile
        p1.save(failOnError: true)
        assertEquals(p1.firstName, "sophors")
        assertEquals(p1.lastName, "khut")
        assertEquals(p1.gender, "male")
    }
}
