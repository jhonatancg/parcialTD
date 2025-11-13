package unu.parcialTD_mysql.controller;

import unu.parcialTD_mysql.controller.request.EntidadRequest;
import unu.parcialTD_mysql.model.Entidad;
import unu.parcialTD_mysql.service.IEntidadService;
import unu.parcialTD_mysql.utils.ApiRoutes;
import unu.parcialTD_mysql.utils.Mensajes;
import unu.parcialTD_mysql.utils.exceptions.NotFoundException;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Log4j2
@RestController
@AllArgsConstructor
@RequestMapping(ApiRoutes.EntidadRoutes.BASE)
public class EntidadController {

    private IEntidadService service;

    @PutMapping(ApiRoutes.EntidadRoutes.edit)
    public ResponseEntity<Entidad> edit(@PathVariable int id, @RequestBody String estado)
            throws NotFoundException {
        Entidad entidad = new Entidad();
        entidad = service.edit(id, estado);
        return ResponseEntity.status(HttpStatus.CREATED).body(entidad);
    }

    @GetMapping("/hola")
    public String hola() {
        return "Hola mundo desde el controlador de Spring Boot";
    }

}
