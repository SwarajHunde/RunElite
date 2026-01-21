package com.runfast.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    private static SessionFactory sessionFactory;

    private HibernateUtil() {
    }

    public static SessionFactory getSessionFactory() {

        if (sessionFactory == null) {
            try {
                Configuration configuration = new Configuration();
                configuration.configure("hibernate.cfg.xml");

                // DEBUG — VERY IMPORTANT FOR CLOUD
                System.out.println("===== HIBERNATE INIT =====");
                System.out.println("DB_URL      = " + System.getenv("DB_URL"));
                System.out.println("DB_USERNAME = " + System.getenv("DB_USERNAME"));
                System.out.println("==========================");

                sessionFactory = configuration.buildSessionFactory();

            } catch (Exception e) {
                e.printStackTrace(); // NEVER REMOVE
                throw new RuntimeException("Failed to initialize Hibernate", e);
            }
        }

        return sessionFactory;
    }
}
