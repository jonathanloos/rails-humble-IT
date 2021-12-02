module FeedbackLoop
  class Engine < ::Rails::Engine
    isolate_namespace Feedback

    initializer "feedback", before: :load_config_initializers do |app|
      app.config.assets.precompile << "feedback/ticket.scss"
      app.config.assets.precompile << "feedback/undraw_collaborators_prrw.svg"
      config.autoload_paths += %W(#{config.root}/lib/modules)
      config.paths["db/migrate"].expanded.each do |expanded_path|
        Rails.application.config.paths["db/migrate"] << expanded_path
      end
    end
  end
end
