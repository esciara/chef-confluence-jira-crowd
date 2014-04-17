# encoding: UTF-8
require 'spec_helper'

describe 'confluence-jira-crowd::default' do
  let(:chef_run) do
    runner = ChefSpec::Runner.new(
      log_level: :error
    )
    Chef::Config.force_logger true
    runner.converge('recipe[confluence-jira-crowd::default]')
  end

  it 'should include the chef-confluence recipe by default' do
    chef_run.should include_recipe 'confluence::default'
  end
end
