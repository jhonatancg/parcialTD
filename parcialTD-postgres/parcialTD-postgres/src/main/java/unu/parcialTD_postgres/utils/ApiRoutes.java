package unu.parcialTD_postgres.utils;

public class ApiRoutes {

    public static class EntidadRoutes {
        private EntidadRoutes() {
            throw new UnsupportedOperationException();
        }

        public static final String BASE = "/api/entidads";
        public static final String add = "/add";
        public static final String getById = "/{id}";
        public static final String edit = "/edit/{id}";
        public static final String delete = "/delete/{id}";
    }
}
