# README

Blog application for ECE595 Web Architecture Class.

Blog Roles:

 * Follower
   Receives email notification of public blog post
   No user information stored other than email   

 * Guest
   Guest comment post access does not require use of email address
   Guest can post comment
   Guest cannot edit or delete comment after it is posted
   No user information stored   

 * User
   User has a user id that is unique to themselves
   User can post a comment
   User can deleted their own comment
   User can edit their own comment
   User informaton stored is email address, username, password

 * Author
   Author is able to post blog posts and comments
   Author is able to edit or delete own blog posts and comments
   Author can view own private posts
   Author information stored is same as user with post privilages

 * Moderator
   Moderator can view all posts, public and private
   Moderator can edit all posts, all comments, and all users
   Moderator has ability to delete all posts, comments, and users
   Moderator has same information stored as a user

   
