<?php
use Slim\App;
use App\Controllers\AlumnoController;
use App\Controllers\CursoController;

return function (App $app) {
    // Ruta raíz
    $app->get('/', function ($request, $response) {
        return $response->withHeader('Location', '/alumnos/lista')->withStatus(302);
    });

    // Grupo alumnos
    $app->group('/alumnos', function ($group) {
        $controller = new AlumnoController();
        
        $group->get('/lista', [$controller, 'lista']);
        $group->get('/nuevo', [$controller, 'nuevo']);
        $group->post('/guardar', [$controller, 'guardar']);
        $group->get('/editar/{id}', [$controller, 'editar']);
        $group->post('/actualizar/{id}', [$controller, 'actualizar']);
        $group->get('/eliminar/{id}', [$controller, 'eliminar']);
    });

    // ==== GRUPO CURSOS ====
    $app->group('/cursos', function ($group) {
        $controller = new CursoController();
        $group->get('/lista', [$controller, 'lista']);
        $group->get('/nuevo', [$controller, 'nuevo']);
        $group->post('/guardar', [$controller, 'guardar']);
        $group->get('/editar/{id}', [$controller, 'editar']);
        $group->post('/actualizar/{id}', [$controller, 'actualizar']);
        $group->get('/eliminar/{id}', [$controller, 'eliminar']);
    });
};
