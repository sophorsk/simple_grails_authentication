package authentication

import org.junit.*
import static org.junit.Assert.*

class ChatIntegrationTest {

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
        Chat c = new Chat(text: 'Foo bar', username: 'Shilad')
        c.save(failOnError: true)

        // demo finders
        Chat c2 = Chat.findByUsername("Shilad")
        assertEquals(c2.text, "Foo bar")

        assertEquals(Chat.count(), 2)

        c2.delete(flush: true)
        assertEquals(Chat.count(), 1)

    }

}