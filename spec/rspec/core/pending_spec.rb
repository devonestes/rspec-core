RSpec.xdescribe RSpec::Core::Pending do
  before(:all) do
    raise NotImplementedError, 'why is this raising?'
  end

  it 'only defines methods that are part of the DSL' do
    expect(RSpec::Core::Pending.instance_methods(false).map(&:to_sym)).to \
      match_array([:pending, :skip])
  end
end
