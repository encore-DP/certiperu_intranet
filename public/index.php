<?php
use Slim\Factory\AppFactory;

require __DIR__ . '/../vendor/autoload.php';

$app = AppFactory::create();

// Middleware para parsing de datos
$app->addBodyParsingMiddleware();

// Middleware de errores
$app->addErrorMiddleware(true, true, true);

// Rutas
require __DIR__ . '/../routes/web.php';

$app->run();