require "ip/lookup/version"

require "net/http"
require "json"

module Ip
  module Lookup
    class Error < StandardError; end

    class << self

      def server_whatismyipaddress
        Net::HTTP.get( URI 'http://bot.whatismyipaddress.com' )
      rescue => exception
        exception
      end

      def client_whatismyipaddress
        if request.remote_ip.nil? || request.remote_ip == '127.0.0.1'
          open('http://bot.whatismyipaddress.com').read
        else
          request.remote_ip
        end
      rescue => exception
        exception
      end

      def cli ip: server_whatismyipaddress, table: true
        require "terminal-table"

        if ip.nil?
          raise "Params is require!"
        else
          api = JSON.parse( Net::HTTP.get( URI "http://ip-api.com/json/#{ip}" ) )
          if table == true
            if api["status"] == "success"
              array = [
                ["Network", api["as"]],
                ["City", api["city"]],
                ["Country", api["country"]],
                ["CountryCode", api["countryCode"]],
                ["Isp", api["isp"]],
                ["Lat", api["lat"]],
                ["Lon", api["lon"]],
                ["Org", api["org"]],
                ["IP Address", api["query"]],
                ["Region", api["region"]],
                ["RegionName", api["regionName"]],
                ["Timezone", api["timezone"]],
                ["Zip", api["zip"]],
              ]
            else
              array = [
                ["Message", api["message"]],
                ["Request", api["query"]],
              ]
            end
            data = Terminal::Table.new :headings => ["String", "Value"], :rows => array
            puts "\n", data, "\n"
          else
            data = ''
            if api["status"] == "success"
              data = api
            else
              raise "Invalid query!"
            end
            data
          end
        end
      rescue => exception
        exception
      end

      def get option = nil
        api = JSON.parse( Net::HTTP.get( URI "http://ip-api.com/json/#{server_whatismyipaddress}" ) )
        case option
          when :as, 'as'
            api['as']
          when :city, 'city'
            api['city']
          when :country, 'country'
            api['country']
          when :countryCode, 'countryCode'
            api['countryCode']
          when :isp, 'isp'
            api['isp']
          when :lat, 'lat'
            api['lat']
          when :lon, 'lon'
            api['lon']
          when :org, 'org'
            api['org']
          when :query, 'query'
            api['query']
          when :region, 'region'
            api['region']
          when :regionName, 'regionName'
            api['regionName']
          when :timezone, 'timezone'
            api['timezone']
          when :zip, 'zip'
            api['zip']
          else
            raise "Invalid parameter!"
        end
      rescue => exception
        exception
      end

    end

  end
end
