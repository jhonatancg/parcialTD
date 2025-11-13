package unu.parcialTD_mysql.service.impl;

import unu.parcialTD_mysql.controller.request.EntidadRequest;
import unu.parcialTD_mysql.model.Entidad;
import unu.parcialTD_mysql.repository.IEntidadRepository;
import unu.parcialTD_mysql.service.IEntidadService;
import unu.parcialTD_mysql.utils.exceptions.NotFoundException;
import jakarta.transaction.Transactional;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.List;

@Log4j2
@Service
@AllArgsConstructor
public class EntidadService implements IEntidadService {

    private IEntidadRepository repository;

    @Override
    public Entidad edit(int id, String estado) {
        Entidad entidad = repository.findById(id).orElse(null);
        entidad.setEstado(estado);
        return repository.save(entidad);
    }
}
