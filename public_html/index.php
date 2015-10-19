<?php
require '../vendor/autoload.php';



$app = new \Slim\Slim();
// Allow from any origin
if (isset($_SERVER['HTTP_ORIGIN'])) {
    header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Max-Age: 86400');    // cache for 1 day
}
// Access-Control headers are received during OPTIONS requests
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {

    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
        header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");

    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
        header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");

}
// return HTTP 200 for HTTP OPTIONS requests
$app->map('/:x+', function($x) {
    http_response_code(200);
})->via('OPTIONS');

$app->get('/', function() use($app) {
    $app->response->setStatus(200);
    echo "Welcome to Spots for Dogs API";
});

$app->group('/spots', function() use ($app) {

    $app->get('/all', function() use ($app) {
        $data  = Spot::with('owner')->with('tags')->with('category')->with('images')->orderBy('has_pictures', 'DESC')->orderBy('name', 'ASC')->get();
        echo $data->toJSON();
    });

    $app->get('/spot/:id', function($id) use ($app) {
        $data  = Spot::with('map')->with('owner')->with('tags')->with('user')->with('images')->find($id);
        echo $data->toJSON();
    });

    $app->put('/spot/:id', function($id) use ($app) {
        $request = $app->request()->put();
        $try = $request['name'];
         echo $try;
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