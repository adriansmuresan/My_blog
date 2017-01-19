#Planning our application

  1. Answers Questions
     - What are we Building?
     - Who are we building it for
     - What features do we need to have?
  2. User Stories
  3. Model our data
  4. Think through the pages we need in our application

## Questions

  1. What am I building? I am  building a personal site, a place where I can blog(not much of a blogger), share examples of my work, and a place where I can be contacted.
  2. Who am I building it for? I am building mainly for myself and the audience who is interested in my journey. I will try to share what I am learning and show potential employers that I know what I am doing.
  3. What features do I want to have?
      - Posts
         - Create / Edit/ Destroy
         - Markdown
         - Syntax Highlighting
         - Comments (Using Disqus)
      - Projects
         - Create / Edit / Destroy   
      - Contact
         - Contact form
         - Send
      - User (use Devise gem)


## User Stories

  As a blank, I want to be able to blank, so that blank.
            - As a user, I want to be able to create posts so that I can share what I am learning, add other interests of mine, and  write or post about my hobbies on my blog.
            - As a user, I want to be able to edit and destroy posts in order to manage my blog.
            - As a user, I want to be able to write posts in markdown format so that it's easy.
            - As a user, I want to be able to highlight the various syntax of code blocks that I share on my blog.
            - As a user, I want to show the visitors and potential employers examples of my work.
            - As a user, I want to be able to have visitors contact me through a form on my site.
            - As a user, I want visitors to be able to leave comments on my posts.


## Model our Data

  **Post**
        title:string
        content:string

  **Project**
        title:string
        description:text
        link:string

  **User**
        using Devise that will be managed for us


## Think through the pages we need in our application
      - Home
      - Posts#index
      - Posts#show
      - Posts#create
      - Projects#show
      - Contact                   
