class UrlMappings {
    static mappings = {
        "/"(controller:"main", action:"home")
        "/$controller/$action?/$id?"{
            constraints {
                // apply constraints here
            }
        }
        "500"(view:'/error')
    }
}