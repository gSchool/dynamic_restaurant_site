require 'spec_helper'
require 'content'

describe Content do
  it "reads content from a csv" do
    paragraph = Content.new(File.expand_path('../dynamic_restaurant_site/config/content.csv'))

    expect(paragraph.paragraphs[0]).to eq "But be all this as it may; let the unseen, ambiguous synod in the air, or the vindictive princes and potentates of fire, have to do or not with earthly Ahab, yet, in this present matter of his leg, he took plain practical procedures; he called the carpenter."
  end
end
