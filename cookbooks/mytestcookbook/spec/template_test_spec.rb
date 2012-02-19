require 'bundler/setup'                                                         
require 'chefspec'

describe 'template tests' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'mytestcookbook::template_test' } 
  it 'template generated with correct attr value' do
    chef_run.should create_file_with_content '/etc/my-template', 'bar'
  end
end
