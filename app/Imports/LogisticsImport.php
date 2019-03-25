<?php

namespace App\Imports;

use App\Models\Logistics;
use Maatwebsite\Excel\Concerns\ToModel;
use Illuminate\Support\Facades\Hash;

class LogisticsImport implements ToModel {

    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function model(array $row) {
        return new Logistics([
            'cedula' => $this->strRepleace($row[3], '.'),
            'nombres' => "$row[0]",
            'apellido1' => $row[1],
            'apellido2' => $row[2],
            'fecha_nacimiento' => $this->parseDate($row['4']),
            'genero' => $row[5],
            'fecha_ingreso' => $this->parseDate($row['6']),
            'numero_empleado' => empty($row[7]) ? 0 : $row[7],
            'cargo' => $row[8],
            'jefe' => (empty($row[9]) ? 0 : $row[9]),
            'zona' => $row[10],
            'municipio' => $row[11],
            'departamento' => $row[12],
            'ventas_2019' => empty($row[13]) ? 0 : $this->strRepleace($this->strRepleace($row[13], '.'), '$'),
            'email' => $row[14],
            'password' => Hash::make($row[15]),
            'imagen' => $row[16],
            'celular' => $this->strRepleace($row[17], '-'),
        ]);
    }

    /**
     * Descripcion: Metodo para reemplazar caracteres en una cadena
     * @param type $field
     * @param type $find
     * @return String
     */
    public function strRepleace($field, $find) {
        return str_replace($find, "", $field);
    }

    /**
     * Descripcion: Metodo para parsear la fecha, en el csv viene como numerico
     * @param type $number
     * @return date (String)
     */
    function parseDate($number) {
        return date("Y-m-d", $number);
    }

}
