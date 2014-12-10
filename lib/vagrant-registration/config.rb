require "vagrant"

module VagrantPlugins
  module Registration
    class Config < Vagrant.plugin("2", :config)
      # The username to subscribe with
      #
      # @return [String]
      attr_accessor :subscriber_username

      # The password of the subscriber
      #
      # @return [String]
      attr_accessor :subscriber_password

      def initialize(region_specific=false)
        @subscriber_username = UNSET_VALUE
        @subscriber_password = UNSET_VALUE
      end

      def finalize!
        @subscriber_username = nil if @subscriber_username == UNSET_VALUE
        @subscriber_password = nil if @subscriber_password == UNSET_VALUE
      end
    end
  end
end
