package unu.parcialTD_mongo.service;

import unu.parcialTD_mongo.model.Entidad;

public interface IEntidadService {

    public Entidad login(String nombre, String clave);

}
