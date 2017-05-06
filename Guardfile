# frozen_string_literal: true
ignore %r{^ignored/path/}, /public/

group :unit do
  guard :rspec, cmd: "RACK_ENV=test \
   bundle exec rspec -I . spec --fail-fast" do

    watch(%r{^spec/.+\_spec.rb})
  end
end
