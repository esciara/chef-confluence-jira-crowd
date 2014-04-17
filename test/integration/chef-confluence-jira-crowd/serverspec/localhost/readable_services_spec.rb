# encoding: UTF-8
require 'spec_helper'

describe 'confluence-jira-crowd::default' do

  describe command('/etc/init.d/confluence status') do
    it { should return_stdout '. confluence is running' }
  end
end
