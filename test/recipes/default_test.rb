# # encoding: utf-8

# Inspec test for recipe inspecfoo::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

%w(foo1.txt foo2.txt foo3.txt).each do |filename|
  describe file("/#{filename}") do
    its(:content) { should match /hello,3/ }
    it { should be_file }
  end
end
