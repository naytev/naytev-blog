require "jekyll-url/version"

module Jekyll
  module Commands
    class MyNewCommand < Jekyll::Command
      class << self
        def init_with_program(prog)
          prog.command(:url) do |c|
            c.syntax "new [options]"
            c.description 'Create a new Jekyll site.'

            c.option 'dest', '-d DEST', 'Where the site should go.'

            add_build_options(c)

            c.action do |args, options|
              file_name = args[0]
              options = configuration_from_options(options)
              site = Jekyll::Site.new(options)
              site.reset
              site.read
              all_pages = site.pages + site.posts
              site.collections.each do |key, value|
                all_pages = ([all_pages] << value.docs).flatten
              end
              found_page = all_pages.find do |page|
                page.relative_path == file_name
              end
              if found_page
                puts found_page.url
              else 
                puts ""
              end
            end
          end
        end
      end
    end
  end
end