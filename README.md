# Spots for Dogs API

A simple api using Slim and Eloquent ORM

Created as a simple API for https://github.com/moolric/spots-for-dogs

##Information used to create this project found:

Installing composer on Dreamhost - https://github.com/Braunson/dreamhost-composer-install

Installing Slim using composer - https://www.youtube.com/watch?v=VdloHDmg990&feature=youtu.be

Integrating Eloquent ORM into Slim - https://www.youtube.com/watch?v=nM37Gi9MhbU
It's in Indonesian (I think) but just watching it without sound is very clear.

About Eloquent relationships - http://daylerees.com/codebright-eloquent-relationships/

Slim documentation  - http://docs.slimframework.com

##Setting up this project

You will need a database, with tables that match the models. If you just want to get going, you can use the database in the /sql folder. If you want to use this project as a skeleton for your own project, you need to have a model for each table in your database (except the pivot tables). You'll need to carefully match up the names of routes and models.

Rename the config-example.php file to config.php and add your own connection details.

Run 
```
composer install
```
(like in the video above).

If you make changes to models or the database at any point, you'll need to run 
```
composer update
```
to rebuild the autoload file.



