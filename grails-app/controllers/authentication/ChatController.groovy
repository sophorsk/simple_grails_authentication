package authentication

import grails.converters.deep.JSON

class ChatController {

    //Checks to see if a user is logged in. Sends them to the chat page if they are, the log in page if they aren't.
    //The chatlist is reversed so the most recent chat lines are at the top.
    def list() {
        if (session.user) {
            ArrayList<Chat> chatList = Chat.list().reverse()
            def model = [ 'comments' : chatList]
            render(model : model, view : 'list', user: session.user.username)
        } else {

            render(view: "/user/login")
        }
    }

    //Makes a new comment
    def makeNew() {
        def c = new Chat(
                username:  params.username,
                text:  params.text)

        c.save(failOnError: true, flush: true)
        redirect(action: 'list')
    }

    //Returns the chat list with JSON
    def ajaxList() {

        render(Chat.list() as JSON)
    }


}
