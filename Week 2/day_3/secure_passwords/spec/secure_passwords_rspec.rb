require "rspec"
require "../lib/secure_passwords.rb"

describe PasswordChecker do
	before :each do
		@pass_check = PasswordChecker.new()
	end

	describe "method check_password" do
		it "returns false if password isn't longer than 7 characters" do
			expect(@pass_check.check_password("abe@domain.com", "cowmilk")).to eq(false)
		end

		it "returns true if password is longer than 7 characters" do
			expect(@pass_check.check_password("abe@domain.com", "cowmilky7!")).to eq(true)
		end

		it "returns true if includes letter, number and symbol" do
			expect(@pass_check.check_password("abe@domain.com", "cowmilky7!")).to eq(true)
		end
	end
end