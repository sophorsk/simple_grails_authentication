package authentication

import grails.test.mixin.*
import org.junit.*
/**
 * Created with IntelliJ IDEA.
 * User: Jacob
 * Date: 12/14/12
 * Time: 12:02 PM
 * To change this template use File | Settings | File Templates.
 */
@TestFor(ChatController)
@Mock(Chat)
class ChatControllerTest {

    void testList() {
        Chat c = new Chat(text: 'hah', username: 'Jacob').save(failOnError: true)
        controller.list()
        assert (view == '/chat/list')
        assert (model.chats)
        assert (model.chats.size() == 1)
    }

    void testMakeNew() {
        // adjust the params variable
        params.username = 'jstein'
        params.text = "Test"
        controller.makeNew()
        def comments = Chat.list()
        assertEquals(comments.size(), 1)
        assertEquals(comments[0].username, 'jstein')
        assertEquals(comments[0].text, 'Test')
    }
}
