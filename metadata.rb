name             'confluence-jira-crowd'
maintainer       'Emmanuel Sciara'
maintainer_email 'emmanuel.sciara@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures a cluster with Atlassian Confluence, Jira and Crowd all talking to one another.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe 'confluence-jira-crowd', 'Installs/configures Atlassian Confluence'

%w(ubuntu).each do |os|
  supports os
end

%w(confluence).each do |cb|
  depends cb
end
