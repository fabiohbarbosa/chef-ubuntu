root = File.absolute_path(File.dirname(__FILE__))

cookbook_path [ root + '/vendor', root + '/cookbooks' ]
data_bag_path root + '/data_bags'
solo true
