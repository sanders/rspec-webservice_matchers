require 'rspec/webservice_matchers'

#
# TODO: set up a test server or mocks for these.
#
describe 'status_code' do
  it 'can check 200 for successful resource requests' do
    'http://www.rfc-editor.org/rfc/rfc2616.txt'.should be_status 200
  end

  it 'handles domain names as well as URLs' do
    'www.rfc-editor.org'.should be_status 200
  end

  it 'can check 503 for the Service Unavailable status' do
    'http://www.weblaws.org/texas/laws/tex._spec._dist._local_laws_code_section_1011.202_tax_to_pay_general_obligation_bonds'.should be_status 503
  end
end

describe 'be_up' do
  it 'follows redirects when necessary' do
    'weblaws.org'.should be_up
  end

  it 'can also handle a simple 200' do
    'http://www.rfc-editor.org/rfc/rfc2616.txt'.should be_up
  end
end

describe 'json schema validation' do
  it 'recognizes correct content'
  it 'throws a meaningful exception if schema data not readable'
  it 'throws a meaningful exception if the schema is not valid'
  it 'throws a meaningful exception if the resource cannot be read'
  it 'throws a meaningful exception if resource doesn\'t validate against the schema'
end
