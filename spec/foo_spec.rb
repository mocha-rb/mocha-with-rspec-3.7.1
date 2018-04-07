require 'spec_helper'
require 'foo'

RSpec.describe Foo do
  around do |example|
    allow(Foo).to receive(:foo).and_return('stubbed-foo')
    example.run
  end

  it 'foo' do
    expect(Foo.foo).to eq('stubbed-foo')
  end
end
