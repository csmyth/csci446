require 'test_helper'

class ProductTest < ActiveSupport::TestCase
	fixtures :products
	
	test "product attributes must not be empty" do
		product = Product.new
		assert product.invalid?
		assert product.errors[:title].any?
		assert product.errors[:description].any?
		assert product.errors[:price].any?
		assert product.errors[:image_url].any?
	end
	
	test "product price must be positive" do
		product = Product.new(title: "The Bath Item Gift Hypothesis",
								description: "It's a Saturnalia miracle!",
								image_url: "bathitem.jpg")
		product.price = -1
		assert product.invalid?
		assert_equal "must be greater than or equal to 0.01",
			product.errors[:price].join('; ')
			
		product.price = 0
		assert product.invalid?
		assert_equal "must be greater than or equal to 0.01", 
			product.errors[:price].join('; ')
			
		product.price = 1
		assert product.valid?
	end
	

	def new_product(image_url)
		Product.new(title: "The Pancake Batter Anomaly",
					description: "Keep true!",
					price: 1,
					image_url: image_url)		
	end
	test "image url" do
		ok = %w{ penny.gif penny.jpg penny.png PENNY.JPG PENNY.Jpg
				http://a.b.c/x/y/z/penny.gif }
		bad = %w{ penny.doc penny.gif/more penny.gif.more }
		
		ok.each do |name|
			assert new_product(name).valid?, "#{name} shouldn't be invalid"			
		end
		
		bad.each do |name|
			assert new_product(name).invalid?, "#{name} shouldn't be valid"
		end
	end
	
	test "product is not valid without a unique title - i18n" do
		product = Product.new(title: products(:lizardspock).title,
								description: "doesn't matter",
								price: 1,
								image_url: "penny.jpg")
		assert !product.save
		assert_equal I18n.translate('activerecord.errors.messages.taken'), 
								product.errors[:title].join('; ')
	end
end
