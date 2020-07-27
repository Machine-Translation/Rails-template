class Initial < ActiveRecord::Migration[6.0]
  def change
    # These are extensions that must be enabled in order to support this database
    enable_extension "plpgsql"
    enable_extension 'pgcrypto'

=begin
    Some of the types that can be used with  t.[type]:
      1. string
      2. boolean
      3. references
      4. integer
      5. enum
      6. datetime
      7. float
      8. timestamps (This creates 2 attributes created_at and updated_at which are both non-null datetime types. They are auto-changed when a row is added or updated.)

    NOTE: id (primary key) attribute is made automatically and does not have to be added. If you
      want to create a different primary key then you have to specify

    Example for creating an Enum for type of user
    create_enum :user_type, ['default', 'admin', 'paid']

    Example for creating a users table with
      1. An emum user type
      2. A string name

    create_table :users do |t|
      t.enum :type, as: "user_type", null: false, default: "default"  #1
      t.string :name, null: false                                     #2
    end

    Example for creating Table posts with
      1. A String attribute for text
      2. A reference to a user in the User table
      3. Datetime created and updated

    create_table :posts do |t|
      t.string :text, null: false             #1
      t.references :user, foreign_key: true   #2
      t.timestamps                            #3
    end
=end
    
  end
end
