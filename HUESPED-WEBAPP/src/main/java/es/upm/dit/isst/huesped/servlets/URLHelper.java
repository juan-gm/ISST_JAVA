package es.upm.dit.isst.huesped.servlets;

public class URLHelper {
    public static String getURL() {
            String envValue = System.getenv("HUESPEDSERVICE_SRV_SERVICE_HOST");
            if(envValue == null)
                    return "http://localhost:8080/HUESPED-SERVICE/rest/HUESPEDES";
            else
                    return envValue;
    }
}
