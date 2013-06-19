package authentication

class User {
    // times created by GORM
    Date dateCreated
    Date lastUpdated

    // fields for registration
    String username
    String password
    String confirm
    String passwordHashed
    Profile profile

    // field for status
    String status

    // transients: they will not be stored on the database
    static transients = ['password', 'confirm']

    // constraints
    static constraints = {
        status(nullable: true)

        username  blank:false, size:5..15, matches:/[\S]+/, unique:true
        password  blank:false, size:5..15, matches:/[\S]+/, validator:{ val, obj ->
            if (obj.password != obj.confirm)
                return 'user.password.dontmatch'
        }
    }
}