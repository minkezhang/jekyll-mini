# Adds support for detached front matter.
# See https://github.com/jekyll/jekyll/issues/1082#issuecomment-177167222
# for more information.

module ReadMetaFiles
  class Generator < Jekyll::Generator
    def generate(site)

      site.posts.docs.each do |doc|
        meta_file = (doc.path + ".yml")
        if File.exist?(meta_file)
            meta_data = SafeYAML.load_file(meta_file)
            meta_data.each { |key, value| doc.data[key] = value}
        end
      end

      site.pages.each do |doc|
        meta_file = (doc.path + ".yml")
        if File.exist?(meta_file)
            meta_data = SafeYAML.load_file(meta_file)
            meta_data.each { |key, value| doc.data[key] = value}
        end
      end

    end
  end
end
