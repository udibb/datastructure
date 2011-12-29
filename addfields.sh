rails g migration AddFieldsToClaim title:string
rails g migration AddFieldsToComment content:string
#rails g migration AddFieldsToContender
rails g migration AddFieldsToDibb title:string
rails g migration AddFieldsToNonuser name:string
rails g migration AddFieldsToUser name:string email:string

rake db:migrate

