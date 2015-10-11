<?php
require '../vendor/autoload.php';

$app = new \Slim\Slim();


$app->get('/', function() use($app) {
    $app->response->setStatus(200);
    echo "Welcome to Spots for Dogs API";
});

$app->group('/spots', function() use ($app) {

    $app->get('/all', function() use ($app) {
        $data  = Spot::all();
        echo $data->toJSON();
    });

    $app->get('/spot/:id', function($id) use ($app) {
        $data  = Spot::with('map')->with('owner')->with('tags')->with('user')->find($id);
        echo $data->toJSON();
    });

});

$app->group('/owners', function() use ($app) {

    $app->get('/all', function() use ($app) {
        $data  = Owner::all();
        echo $data->toJSON();
    });

    $app->get('/owner/:id', function($id) use ($app) {
        $data  = Owner::find($id);
        echo $data->toJSON();
    });
});

$app->group('/categories', function() use ($app) {
    $app->get('/all', function() use ($app) {
        $data  = Category::all();
        echo $data->toJSON();
    });

    $app->get('/category/:id', function($id) use ($app) {
        $data  = Category::find($id);
        echo $data->toJSON();
    });
});

$app->group('/images', function() use ($app) {
    $app->get('/all', function () use ($app) {
        $data = Image::all();
        echo $data->toJSON();
    });

    $app->get('/image/:id', function ($id) use ($app) {
        $data = Image::find($id);
        echo $data->toJSON();
    });
});
$app->group('/maps', function() use ($app) {
    $app->get('/all', function () use ($app) {
        $data = Map::all();
        echo $data->toJSON();
    });

    $app->get('/map/:id', function ($id) use ($app) {
        $data = Map::find($id);
        echo $data->toJSON();
    });
});
$app->group('/tags', function() use ($app) {
    $app->get('/all', function () use ($app) {
        $data = Tag::all();
        echo $data->toJSON();
    });

    $app->get('/tag/:id', function ($id) use ($app) {
        $data = Tag::find($id);
        echo $data->toJSON();
    });

    $app->get('/spot/:id', function($id) use ($app) {
        $spot  = Spot::with('tags')->find($id);
        $data = $spot->tags;
        echo $data->toJSON();
    });
});
$app->group('/users', function() use ($app) {
    $app->get('/all', function () use ($app) {
        $data = User::all();
        echo $data->toJSON();
    });

    $app->get('/user/:id', function ($id) use ($app) {
        $data = User::find($id);
        echo $data->toJSON();
    });
});




$app->run();