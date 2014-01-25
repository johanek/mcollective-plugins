metadata  :name        => "Helloworld",
          :description => "Echo service for MCollective",
          :author      => "Johan van den Dorpe",
          :license     => "Apache v2",
          :version     => "1.0",
          :url         => "http://johan.org.uk",
          :timeout     => 2

action "echo", :description "Echos back any message it receives" do

  display :always
  
  input :msg,
        :prompt      => "Message",
        :description => "Message to be repeated back",
        :type        => :string,
        :validation  => '^[a-zA-Z\-_\d]+$',
        :optional    => false,
        :maxlength   => 30

end
