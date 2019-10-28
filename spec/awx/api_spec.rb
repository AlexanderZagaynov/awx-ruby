# frozen_string_literal: true

RSpec.describe Awx::Api do
  it 'has a version number' do
    expect(Awx::Api::VERSION).to_not be nil
  end
end
