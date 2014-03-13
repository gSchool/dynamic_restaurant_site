require 'erb'

class App
  def call(env)
    [
      200,
      {
        'Content-Type' => 'text/html',
        'Cache-Control' => 'public, max-age=0'
      },
      body
    ]
  end

  private

  def body
    index_html = File.expand_path('../../public/index.html.erb', __FILE__)
    index_erb = File.expand_path('../../public/index.html.erb.erb', __FILE__)
    if File.exist?(index_html)
      File.open(index_html, File::RDONLY)
    else
      [ERB.new(File.open(index_erb, File::RDONLY).read).result]
    end
  end
end