require 'spec_helper'

describe Widget do
  it { should validate_presence_of(:name).with_message("Name is required") }
end
