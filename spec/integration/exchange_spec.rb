require 'swagger_helper'

RSpec.describe 'API::V1::Exchanges', type: :request do
	describe 'Exchanges API Get' do
	  path '/convert' do
		get 'Retrieves all Exchanges' do
		  consumes 'application/json'
		  produces 'application/json'
		  tags 'exchanges'
		  parameter name: :source_currency, in: :query, type: :string, description: '', required: true
		  parameter name: :target_currency, in: :query, type: :string, description: '', required: true
		  parameter name: :amount, in: :query, type: :number, description: '', required: true
		  response '200', :success do
			schema type: :object,
				properties: {
					value: { type: :number }
				} 
				run_test!
			end
	
			response '404', 'Exchanges not found' do
				run_test!
			end
		end
	  end
	end
end