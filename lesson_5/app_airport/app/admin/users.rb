ActiveAdmin.register User do
  permit_params :email, :password, :image, :admin

  show do
    h2 "Email of user: #{user.email}"
    h2 "Image present: #{user.image?}"
    if user.admin
      h2 "#{user.email} is admin"
    else
      h2 "#{user.email} isn't admin"
    end
  end

  form user: 'User info' do |f|
    input :email
    br
    input :password
    br
    input :image
    br
    input :admin
    actions
  end
end
