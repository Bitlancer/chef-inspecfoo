#
# Cookbook Name:: inspecfoo
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

cookbook_file '/foo1.txt' do
    source 'foo.txt'
end

template '/foo2.txt' do
    source 'foo.txt.erb'
end

execute 'create-a-file-manually-because' do
    command "echo 'hello,3' > /foo3.txt"
end
