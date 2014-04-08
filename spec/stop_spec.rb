require 'spec_helper'

describe Stop do
  it {should have_many :lines}
  it {should belong_to :station}
  it {should belong_to :bus}
end
