json.array! @v1_chore do |each_chore|

    json.partial! 'v1/chores/chore', chore: each_chore
    # add user
    user = User.where(id: each_chore.user_id).first
    if user.present?
    json.user do
        json.partial! 'v1/sessions/user', user: user
        end
    else
json.user  nil
    end
    # add group
    group = Group.where(id: params[:group_id]).first
    if group.present?
      json.group_image group.image_file
    else
      json.group_image nil
    end
end
