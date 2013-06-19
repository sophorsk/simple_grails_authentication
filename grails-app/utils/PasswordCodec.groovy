
/**
 * Created with IntelliJ IDEA.
 * User: sophorskhut
 * Date: 11/24/12
 * Time: 12:23 AM
 * To change this template use File | Settings | File Templates.
 */
import java.security.MessageDigest
import sun.misc.BASE64Encoder
import sun.misc.CharacterEncoder

class PasswordCodec {
    static encode = { str ->
        MessageDigest md = MessageDigest.getInstance('SHA')
        md.update(str.getBytes('UTF-8'))
        return (new BASE64Encoder()).encode(md.digest())
    }
}
