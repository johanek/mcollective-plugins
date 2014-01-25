module MCollective
  module Agent
    class Helloworld<RPC::Agent
      metadata :name        => "Helloworld",
               :description => "Echo service for MCollective",
               :author      => "Johan van den Dorpe",
               :license     => "Apache v2",
               :version     => "1.0",
               :url         => "http://johan.org.uk",
               :timeout     => 2

      action "echo" do
        validate :msg, String
        reply.data = request[:msg]  
      end

    end # Class
  end # Module Agent
end # Module MCollective
