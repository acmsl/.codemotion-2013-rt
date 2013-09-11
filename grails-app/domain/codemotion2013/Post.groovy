package codemotion2013

class Post {

    static constraints = {
        previous
    }

    String content
    Date created
    Post previous = null
}
