package es.upm.dit.isst.huesped.rest;

import javax.ws.rs.ApplicationPath;

import org.glassfish.jersey.server.ResourceConfig;

@ApplicationPath("rest")
public class HuespedApp extends ResourceConfig {
        public HuespedApp() {
                packages("es.upm.dit.isst.huesped.rest");
        }
}

