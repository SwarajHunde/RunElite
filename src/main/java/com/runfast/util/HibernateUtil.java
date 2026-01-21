package com.runfast.util;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.runfast.entity.GroupMember;
import com.runfast.entity.Runner;
import com.runfast.entity.RunningGroup;

public class HibernateUtil {

    private static SessionFactory sessionFactory;

    private HibernateUtil() {
    }

    public static SessionFactory getSessionFactory() {

        if (sessionFactory == null) {
            try {
                String dbUrl = System.getenv("DB_URL");
                String dbUser = System.getenv("DB_USERNAME");
                String dbPass = System.getenv("DB_PASSWORD");

                if (dbUrl == null || dbUser == null || dbPass == null) {
                    throw new RuntimeException(
                        "Missing DB environment variables: DB_URL / DB_USERNAME / DB_PASSWORD"
                    );
                }

                Properties props = new Properties();
                props.put("hibernate.connection.driver_class", "com.mysql.cj.jdbc.Driver");
                props.put("hibernate.connection.url", dbUrl);
                props.put("hibernate.connection.username", dbUser);
                props.put("hibernate.connection.password", dbPass);
                props.put("hibernate.dialect", "org.hibernate.dialect.MySQL8Dialect");
                props.put("hibernate.hbm2ddl.auto", "update");
                props.put("hibernate.show_sql", "true");

                Configuration configuration = new Configuration();
                configuration.setProperties(props);

                configuration.addAnnotatedClass(RunningGroup.class);
                configuration.addAnnotatedClass(Runner.class);
                configuration.addAnnotatedClass(GroupMember.class);

                sessionFactory = configuration.buildSessionFactory();

            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException("Failed to initialize Hibernate", e);
            }
        }

        return sessionFactory;
    }
}
