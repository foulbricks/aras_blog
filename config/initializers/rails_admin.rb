RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    index                         # mandatory
    dashboard                     # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
  
  config.model Blog do
    
    list do
      field :id
      field :name
      field :active
      field :priority
    end
    
    edit do
      configure :user do
        visible false
      end
      
      field :name
      # field :introduction, :wysihtml5 do
      #   config_options toolbar: { fa: true, html: true },
      #                  parserRules: { tags: { p:1 } }
      # end
      field :introduction, :froala do
        config_options do
          {
            inlineMode: false,
            paragraphy: false
          }
        end
      end
      field :priority
      field :image
      field :active
      
      field :user_id, :hidden do
        visible true
        default_value do
          bindings[:view]._current_user.id
        end
      end
    end
  end
  
  config.model Briefing do
    list do
      field :id
      field :headline
      field :position
      field :active
    end
    
    edit do
      field :headline
      field :description, :froala do
        config_options do
          {
            inlineMode: false,
            paragraphy: false
          }
        end
      end
      field :position
      field :image
      field :active
    end
  end
  
  config.model Comment do
    list do
      field :id
      field :name
      field :email
      field :comment
    end
    
    edit do
      field :name
      field :email
      field :comment, :froala do 
        config_options do
          {
            inlineMode: false,
            paragraphy: false
          }
        end
      end
    end
  end
  
  config.model LandingPage do
    list do
      field :id
      field :headline
      field :landing_page_type
      field :active
    end
    
    edit do
      field :headline
      field :description, :froala do
        config_options do
          {
            inlineMode: false,
            paragraphy: false
          }
        end
      end
      field :landing_page_type
      field :image
      field :active
    end
  end
  
  config.model Photo do
    list do
      field :id
      field :url
    end
  end
  
  config.model Post do
    list do
      field :id
      field :blog
      field :headline
      field :publication_date
      field :active
    end
    
    edit do
      field :blog
      field :headline
      field :introduction, :froala do
        config_options do
          {
            inlineMode: false,
            paragraphy: false
          }
        end
      end
      field :description, :froala do
        config_options do
          {
            inlineMode: false,
            paragraphy: false
          }
        end
      end
      field :publication_date
      field :image
      field :active
      field :featured
      field :user_id, :hidden do
        visible true
        default_value do
          bindings[:view]._current_user.id
        end
      end
    end
  end
  
  config.model User do
    list do
      field :id
      field :name
      field :email
      field :sign_in_count
      field :current_sign_in_at
    end
    
    edit do
      field :first_name
      field :last_name
      field :email
      field :password
      field :password_confirmation
    end
  end
end
