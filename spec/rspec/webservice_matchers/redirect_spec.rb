require 'rspec/webservice_matchers'

#
# TODO: Set up a server for these. (Or a mock?) 
#       Faraday supports testing: we can use that now.
#

describe 'redirect_permanently_to' do
  it 'passes when receiving a 301 to the given URL' do
    expect('http://weblaws.org').to redirect_permanently_to('http://www.weblaws.org/')
    expect('http://www.getquisitive.com/press-kit/').to redirect_permanently_to 'http://getquisitive.com/press-kit/'
  end
end

describe 'redirect_temporarily_to' do
  it 'passes when it gets a 302' do
    'http://www.oregonlaws.org/cms/about_us'.should redirect_temporarily_to 'http://www.weblaws.org/cms/about_us'
  end

  it 'passes when it gets a 307'
end