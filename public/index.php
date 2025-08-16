<?php
use Slim\Factory\AppFactory;

require __DIR__ . '/../vendor/autoload.php';

$app = AppFactory::create();

// Middleware de errores detallado
$app->addErrorMiddleware(true, true, true);

// Ruta de prueba adicional
$app->get('/ping', function ($request, $response) {
    $response->getBody()->write('pong');
    return $response;
});

// Cargar rutas principales
require __DIR__ . '/../routes/web.php';

$app->run();
