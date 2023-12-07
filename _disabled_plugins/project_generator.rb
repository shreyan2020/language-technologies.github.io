module Jekyll
    class ProjectPageGenerator < Generator
      safe true
      priority :normal
  
      def generate(site)
        if site.layouts.key? 'project'
          projects = site.data['projects'] || []
          projects.each do |project|
            project_title = project['title']
            project_file_path = "#{project_title.downcase.gsub(' ', '-')}.md"
            # FileUtils.mkdir_p(File.dirname(project_file_path))
            dir = '_projects'
            # puts project_file_path
            page = ProjectPage.new(site, site.source, dir, project_file_path, project)
            site.pages << page
            page.write_new_page
          end
        end
      end
    end
  
    class ProjectPage < PageWithoutAFile
      def initialize(site, base, dir, project_file_path, project)
        super(site, base, dir, project_file_path)
  
        self.data = {
          'layout' => 'project',
          'title' => project['title'],
          'categories' => project['type'],
          'excerpt' => project['header_description'],
          'excerpt_intro' => project['page_excerpt'],
          'publications' => project['publications'],
          'researchers' => project['researchers'],
          'header' => {
            'overlay_color' => "#000",
            'overlay_filter' => "0.5",
            'overlay_image' => "/assets/images/emile-perron-xrVDYZRGdw4-unsplash.jpg",
            'caption' => "Photo credit: [Unsplash](https://unsplash.com/photos/macbook-pro-showing-programming-language-xrVDYZRGdw4)"
            }
        }
      end
  
      def write_new_page
        File.write(path, content)
      end
  
      def content
        front_matter = YAML.dump(self.data)
        "#{front_matter}\n---\n"
      end
    end
  end
  