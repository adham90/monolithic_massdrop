## Plan

    - Answer qustions
    - User stories
    - Model data
    
## Qusetions

    1. What are we building?
    2. Who are we building it for?
    3. What features do we want to have?
    
    1. Clone of massdrop website with rails only
       massdrop help users to buy specific products
       and have big discount on it.
    
    2. Companies and buyers
    
    3. - CRUD for product, drop and poll.
       - user sign up, sign in / out.
       - Authentication so that a user can only access the
         content.
       - Image uploading to s3 (refile).
       - host app on Heroku.
       - use sync for real-time partials.
       - device for managing users.
       
       
## User stories

    As a user, I want to **BLANK** becouse of **BLANK**
    
        - As a user, I want to be able to join a drop so
          that i can buy it.
      
        - As a user, I want to be able to vote for a product
          in a poll to that we can have a drop on it.
      
        - As a user, I want to be able to leve a comment on a
          drop or a poll to that i can share my opinion.
        
        - As a user, I want to be able to join a community so that
          i can daily email about what is new in my community.
        
        - As a user, I want to be able to edit my profile.
        
        - As a user, I want to be able to submit new product suggest
          to the site admins so that we can have a vote and drop on it.
        
        - As a admin user, I want to be able to create/delete product,
          drop and poll so that normal users can buy thes product.
          
## Data
    # Table_name
        *relation*
        - field_name

    # Product
        *has_many :drops*
        *has_many :image*
        - Name
        - Desctiption
        - msrp
        
    # Drop
        *belongs_to :product*
        *has_many :locks*
        *has_many :users as joins*
        *has_many :users as comments*
        *belongs_to :community*
        *has_many :comments*
        - Desctiption
        - end_at
        
    # Lock
        *belongs_to :drop*
        - required_joins
        - drop_to
        - unlocked?
    
    # Poll
        *has_many :products*
        *has_many :comments*
        
    # Product_Poll
        *belongs_to :product*
        *belongs_to :poll*
        //acts_as_votable
        
    # Comment
        *belongs_to :commentable, :polymorphic => true*
        *belongs_to :user*
        - body
        - commentable_id
        - commentable_type

     # User
         *has_many :comments*
         *has_many :drops*
         *has_many :votes*
         - Name
         - avatar
         - bio
         - email
         - phone
         - address
