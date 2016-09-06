require 'mkmf'

CONFIG['LDSHARED'] = "$(CXX) -shared"

create_makefile "map-rbcpp"
