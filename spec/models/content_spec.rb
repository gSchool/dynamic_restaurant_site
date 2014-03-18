require 'spec_helper'
require 'content'

describe Content do
  it "reads content from a csv" do
    paragraph = Content.new(File.expand_path('../dynamic_restaurant_site/config/sample_content.csv'))

    expect(paragraph.paragraphs[0]).to eq "a paragraph about stuff"
  end
end
