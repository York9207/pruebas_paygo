<?php

namespace App\Http\Controllers\Admin;

use Backpack\CRUD\app\Http\Controllers\CrudController;
// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\LogisticsRequest as StoreRequest;
use App\Http\Requests\LogisticsRequest as UpdateRequest;
use Backpack\CRUD\CrudPanel;
use App\Imports\UsersImport;
use Maatwebsite\Excel\Facades\Excel;

/**
 * Class LogisticsCrudController
 * @package App\Http\Controllers\Admin
 * @property-read CrudPanel $crud
 */
class LogisticsCrudController extends CrudController {

    public function setup() {
        /*
          |--------------------------------------------------------------------------
          | CrudPanel Basic Information
          |--------------------------------------------------------------------------
         */
        $this->crud->setModel('App\Models\Logistics');
        $this->crud->setRoute(config('backpack.base.route_prefix') . '/logistics');
        $this->crud->setEntityNameStrings('logistics', 'logistics');
        $this->crud->setColumns(['cedula', 'nombres', 'apellido1', 'apellido2', 'fecha_nacimiento', 'genero', 'fecha_ingreso', 'numero_empleado', 'cargo', 'jefe', 'zona', 'municipio', 'departamento', 'ventas_2019', 'email', 'password', 'imagen', 'celular']);
        $this->crud->addField([
            'name' => 'cedula',
            'type' => 'number',
            'label' => "Cedula"
        ]);
        $this->crud->addField([
            'name' => 'nombres',
            'type' => 'text',
            'label' => "Nombres"
        ]);
        $this->crud->addField([
            'name' => 'apellido1',
            'type' => 'text',
            'label' => "Primer Apellido"
        ]);
        $this->crud->addField([
            'name' => 'apellido2',
            'type' => 'text',
            'label' => "Segundo Apellido"
        ]);
        $this->crud->addField([
            'name' => 'fecha_nacimiento',
            'type' => 'date',
            'label' => "Fecha Nacimiento"
        ]);
        $this->crud->addField([
            'name' => 'genero',
            'type' => 'text',
            'label' => "Sexo"
        ]);
        $this->crud->addField([
            'name' => 'fecha_ingreso',
            'type' => 'date',
            'label' => "Fecha Ingreso"
        ]);
        $this->crud->addField([
            'name' => 'numero_empleado',
            'type' => 'number',
            'label' => "Numero Empleados"
        ]);
        $this->crud->addField([
            'name' => 'cargo',
            'type' => 'text',
            'label' => "Cargo"
        ]);
        $this->crud->addField([
            'name' => 'jefe',
            'type' => 'text',
            'label' => "Jefe"
        ]);
        $this->crud->addField([
            'name' => 'zona',
            'type' => 'text',
            'label' => "Zona"
        ]);
        $this->crud->addField([
            'name' => 'municipio',
            'type' => 'text',
            'label' => "Municipio"
        ]);
        $this->crud->addField([
            'name' => 'departamento',
            'type' => 'text',
            'label' => "Departamento"
        ]);
        $this->crud->addField([
            'name' => 'ventas_2019',
            'type' => 'number',
            'label' => "Ventas"
        ]);
        $this->crud->addField([
            'name' => 'email',
            'type' => 'email',
            'label' => "Correo Electronico"
        ]);
        $this->crud->addField([
            'name' => 'password',
            'type' => 'password',
            'label' => "Contraseña"
        ]);
        $this->crud->addField([
            'name' => 'imagen',
            'type' => 'text',
            'label' => "Imagen"
        ]);
        $this->crud->addField([
            'name' => 'celular',
            'type' => 'number',
            'label' => "Numero Celular"
        ]);

        /*
          |--------------------------------------------------------------------------
          | CrudPanel Configuration
          |--------------------------------------------------------------------------
         */

        // TODO: remove setFromDb() and manually define Fields and Columns
        $this->crud->setFromDb();

        // add asterisk for fields that are required in LogisticsRequest
//        $this->crud->setRequiredFields(StoreRequest::class, 'create');
//        $this->crud->setRequiredFields(UpdateRequest::class, 'edit');
        $this->crud->enableExportButtons();
    }

    public function store(StoreRequest $request) {
        // your additional operations before save here
        $redirect_location = parent::storeCrud($request);
        // your additional operations after save here
        // use $this->data['entry'] or $this->crud->entry
        return $redirect_location;
    }

    public function update(UpdateRequest $request) {
        // your additional operations before save here
        $redirect_location = parent::updateCrud($request);
        // your additional operations after save here
        // use $this->data['entry'] or $this->crud->entry
        return $redirect_location;
    }

}
