require 'swagger_helper'
require 'rails_helper'
require 'spec_helper'

RSpec.describe 'Exchanges', type: :request do
	describe 'Exchanges API Get' do
	  path '/api/v1/convert' do
		get 'Retrieves all Exchanges' do
		  consumes 'application/json'
		  produces 'application/json'
		  tags 'exchanges'
		#   parameter name: :source_currency, in: :query, type: :string, description: '', required: true
		  parameter name: :source_currency, :in => :path, :type => :string, required: true
		  parameter name: :target_currency, in: :query, type: :string, description: '', required: true
		  parameter name: :amount, in: :query, type: :number, description: '', required: true
		  response '200', :success do
			schema type: :object,
				properties: {
					value: { type: :number }
				} 
				run_test!
			end
		end
	  end
	end
end