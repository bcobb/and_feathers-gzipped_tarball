# AndFeathers::GzippedTarball

Works with [and-feathers](http://github.com/bcobb/and_feathers) to turn in-memory archives into gzipped tarballs.

## Installation

Add this line to your application's Gemfile:

    gem 'and_feathers-gzipped_tarball'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install and_feathers-gzipped_tarball

## Usage

### Writing a tarball to disk

```ruby
require 'and_feathers'
require 'and_feathers/gzipped_tarball'

# This is a simple archive
archive = AndFeathers.build('archive') do |root|
  root.file('README')
end

File.open('archive.tgz', 'w+') do |f|
  f << archive.to_io(AndFeathers::GzippedTarball).read
end
```

### Tar an existing directory, plus a few changes/additions

```ruby
require 'and_feathers'
require 'and_feathers/gzipped_tarball'

archive = AndFeathers.from_path('spec') do |spec|
  spec.file('end_to_end_spec.rb') { '# whoops' }
  spec.file('spec_helper.rb') { '# everyone needs one of these' }
end

File.open('spec.zip', 'w+') do |f|
  f << archive.to_io(AndFeathers::GzippedTarball).read
end
```
