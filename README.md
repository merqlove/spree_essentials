# Spree Essentials [![Build Status](https://secure.travis-ci.org/citrus/spree_essentials.png)](http://travis-ci.org/citrus/spree_essentials)

Spree Essentials is the base for many content related extensions for Spree. It doesn't do much on it's own ;)

Spree Essentials provides other extensions with:

* An asset-upload interface
* An easy markdown editor with ajax preview
* Image picker for embedding uploaded images into markdown editor
* A common navigation tab ("Content")
* A shared `test_helper.rb`

Current essential-aware extensions include:

* [spree_essential_cms](https://github.com/citrus/spree_essential_cms): A full featured CMS with pages, contents, images and more
* [spree_essential_blog](https://github.com/citrus/spree_essential_blog): A blog complete with archives, categories, tags and related products
* [spree_essential_press](https://github.com/citrus/spree_essential_press): A simple press page for displaying media related content.


------------------------------------------------------------------------------
Installation
------------------------------------------------------------------------------

If you don't already have an existing Spree site, [click here](https://gist.github.com/946719) then come back later... You can also read the Spree docs [here](http://spreecommerce.com/documentation/getting_started.html)...

Spree Essentials can be installed by itself by adding the following to your Gemfile:
    
```ruby  
# Spree 1.0.x
gem 'spree_essentials', '~> 0.4.0.rc3'

# Spree 0.70.x
gem 'spree_essentials', '~> 0.3.3'

# Spree 0.60.x
gem 'spree_essentials', '~> 0.2.3'
```

This isn't necessary if you're using spree_essentials based extensions. If that's the case, just include the extensions normally:

```ruby  
gem 'spree_essential_cms'
gem 'spree_essential_blog'
```
    
Then run:
    
```bash
bundle install
```

Once that's complete, run the migration generator and migrate your database:

To see your available generators run
 
```bash
rails g
```
    
Now run the generators for extensions you wish to install    

```bash 
rails g spree_essentials:install
rails g spree_essentials:cms
rails g spree_essentials:blog
```
    
Then migrate your database:

```bash
rake db:migrate
```

If that all went smoothly, you should be ready to boot the server with:

```bash
rails s
```

Now login to the admin and click on the 'Content' tab!


------------------------------------------------------------------------------
Notes
------------------------------------------------------------------------------

Spree Essentials is under constant development... Development is being done on OSX with Ruby 1.9.3 and usually the latest version of Spree. (currently 1.0.1)

Please let me know if you find any bugs or have feature requests you'd like to see. 


------------------------------------------------------------------------------
Testing
------------------------------------------------------------------------------

The test suite can be run like so:

```bash
git clone git://github.com/citrus/spree_essentials.git
cd spree_essentials
bundle install
bundle exec dummier
rake
```    

 
------------------------------------------------------------------------------
Demo
------------------------------------------------------------------------------

You can easily use the test/dummy app as a demo of spree_essentials. Just `cd` to where you develop and run:
  
```bash  
git clone git://github.com/citrus/spree_essentials.git
cd spree_essentials
cp test/dummy_hooks/after_migrate.rb.sample test/dummy_hooks/after_migrate.rb
bundle install
bundle exec dummier
cd test/dummy
rails s
```

 
------------------------------------------------------------------------------
To Do
------------------------------------------------------------------------------

* better documentation (you know you want to help!)


------------------------------------------------------------------------------
Change Log
------------------------------------------------------------------------------

**0.40.0.rc3 - 2012/3/7**

* Normalize upload attachment location
* Use rails engine conventions for installation
* Remove shared InstallGenerator class
* Improved test coverage
* Added test/spree_essential_example 


**0.40.0.rc2, 0.3.3 - 2012/1/20**

* Precompile admin assets in production


**0.4.0.rc1 - 2012/1/16**

* Add Spree 1.0.0 compatibility
* Breaks with previous versions of Spree


**0.3.2 - 2011/12/30**

* Safer decorator load path


**0.3.1 - 2011/12/13**

* Fix broken markitup editor
* Rework 'selected' class on content tab 


**0.3.0 - 2011/12/13**

* Upgrade to Spree 0.70.x
* Remove spork dependency


....more in [CHANGELOG.md](https://github.com/citrus/spree_essentials/blob/master/CHANGELOG.md)


------------------------------------------------------------------------------
Contributors
------------------------------------------------------------------------------

So far it's just me; Spencer Steffen. 

If you'd like to help out feel free to fork and send me pull requests!


------------------------------------------------------------------------------
License
------------------------------------------------------------------------------

Copyright (c) 2011 - 2012 Spencer Steffen & Citrus, released under the New BSD License All rights reserved.
