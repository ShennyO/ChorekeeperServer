
json.call(
        user,
        :id,
        :email,
        :first_name,
        :last_name,
        :username,
        :authentication_token,
        :image_file
    )

json.image_file user.image_file.url(:medium)
