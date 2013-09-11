package codemotion2013

class Post {

    static belongsTo = [ previous: Post ]
    static constraints = {
        content maxSize: 200
        previous nullable: true
    }

    String content
    Date created
    Post previous = null
}
