Rails.application.routes.draw do
  # Routes for the Big letter resource:

  # CREATE
  post("/insert_big_letter", { :controller => "big_letters", :action => "create" })
          
  # READ
  get("/big_letters", { :controller => "big_letters", :action => "index" })
  
  get("/big_letters/:path_id", { :controller => "big_letters", :action => "show" })
  
  # UPDATE
  
  post("/modify_big_letter/:path_id", { :controller => "big_letters", :action => "update" })
  
  # DELETE
  get("/delete_big_letter/:path_id", { :controller => "big_letters", :action => "destroy" })

  #------------------------------

  # Routes for the Post resource:

  # CREATE
  post("/insert_post", { :controller => "posts", :action => "create" })
          
  # READ
  get("/posts", { :controller => "posts", :action => "index" })
  
  get("/posts/:path_id", { :controller => "posts", :action => "show" })
  
  # UPDATE
  
  post("/modify_post/:path_id", { :controller => "posts", :action => "update" })
  
  # DELETE
  get("/delete_post/:path_id", { :controller => "posts", :action => "destroy" })

  #------------------------------

  get("/", { :controller => "departments", :action => "index" })
  # Routes for the Department resource:
          
  # READ
  get("/departments", { :controller => "departments", :action => "index" })
  
  get("/departments/:path_id", { :controller => "departments", :action => "show" })

  #------------------------------

  # Routes for the Course resource:

  # READ
  get("/courses", { :controller => "courses", :action => "index" })
  
  get("/courses/:path_id", { :controller => "courses", :action => "show" })

  #------------------------------

  # Routes for the Enrollment resource:
          
  # READ
  get("/enrollments", { :controller => "enrollments", :action => "index" })
  
  get("/enrollments/:path_id", { :controller => "enrollments", :action => "show" })

  #------------------------------

  # Routes for the Student resource:

  # READ
  get("/students", { :controller => "students", :action => "index" })
  
  get("/students/:path_id", { :controller => "students", :action => "show" })

  #------------------------------

end
