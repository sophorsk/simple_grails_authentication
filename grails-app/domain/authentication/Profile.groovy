package authentication

class Profile {

    // variables to store information for each profile
    String firstName
    String lastName

    String school
    String location
    String interest
    String gender

    static belongsTo = [user : User]

    static constraints = {

        // firstName and lastName cannot be null
        firstName (nullable: false)
        lastName (nullable: false)

        school(nullable: true)
        location(nullable: true)
        interest(nullable: true)
        gender(nullable: true)

    }
}
