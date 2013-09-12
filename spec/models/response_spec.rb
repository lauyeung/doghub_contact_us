require 'spec_helper'

describe Response do

  it { should have_valid(:first_name).when('Suzy', 'Sammy') }
  it { should_not have_valid(:first_name).when(nil, '') }

  it { should have_valid(:last_name).when('Savron', 'Smith') }
  it { should_not have_valid(:last_name).when(nil, '') }

  it { should have_valid(:email).when('suzy.savron@gmail.com') }
  it { should_not have_valid(:email).when(nil,'','12534245')}

  it { should have_valid(:subject).when('Hello', 'How are you') }
  it { should_not have_valid(:subject).when(nil, '') }

  it { should have_valid(:description).when('Hello', 'How are you') }
  it { should_not have_valid(:description).when(nil, '') }

end
