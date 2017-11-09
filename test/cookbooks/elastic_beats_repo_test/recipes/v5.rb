#
# Cookbook:: elastic_beats_repo_test
# Recipe:: v1
#
# Copyright:: 2017, The Authors, All Rights Reserved.

%w[filebeat packetbeat metricbeat].each do |beat|
  package beat do
    version %w[fedora rhel amazon].include?(node['platform_family']) ? '5.6.3-1' : '5.6.3'
  end
end
