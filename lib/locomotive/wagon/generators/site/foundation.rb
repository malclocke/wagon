module Locomotive
  module Wagon
    module Generators
      module Site

        class Foundation < Base

          def choose_haml_over_html
            if yes?('Do you prefer HAML templates ?')
              remove_file File.join(self.destination, 'app/views/pages/index.liquid')
              remove_file File.join(self.destination, 'app/views/pages/404.liquid')
              remove_file File.join(self.destination, 'app/views/snippets/footer.liquid')
            else
              remove_file File.join(self.destination, 'app/views/pages/index.liquid.haml')
              remove_file File.join(self.destination, 'app/views/pages/404.liquid.haml')
              remove_file File.join(self.destination, 'app/views/snippets/footer.liquid.haml')
            end
          end

        end

        Locomotive::Wagon::Generators::Site.register(:foundation, Foundation, %{
          A LocomotiveCMS site powered by Foundation (v4.3.2).
        })
      end
    end
  end
end