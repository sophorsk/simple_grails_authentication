package authentication



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Chat)
class ChatTests {

    void testSomething() {
        Chat c = new Chat(text: 'Foo bar', username: 'Shilad')
        c.save(failOnError: true)

        // demo finders
        Chat c2 = Chat.findByUsername("Shilad")
        assertEquals(c2.text, "Foo bar")

    }
}
