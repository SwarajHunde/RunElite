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
                // Debug: Print available environment variables
                System.out.println("=== Checking Environment Variables ===");
                System.out.println("MYSQLHOST: " + System.getenv("MYSQLHOST"));
                System.out.println("MYSQLPORT: " + System.getenv("MYSQLPORT"));
                System.out.println("MYSQLDATABASE: " + System.getenv("MYSQLDATABASE"));
                System.out.println("MYSQLUSER: " + System.getenv("MYSQLUSER"));
                System.out.println("MYSQLPASSWORD available: " + (System.getenv("MYSQLPASSWORD") != null));
                
                // Get Railway MySQL variables
                String mysqlHost = System.getenv("MYSQLHOST");
                String mysqlPort = System.getenv("MYSQLPORT");
                String mysqlDatabase = System.getenv("MYSQLDATABASE");
                String mysqlUser = System.getenv("MYSQLUSER");
                String mysqlPassword = System.getenv("MYSQLPASSWORD");
                
                // Validate required variables
                if (mysqlHost == null || mysqlDatabase == null || mysqlUser == null || mysqlPassword == null) {
                    throw new RuntimeException(
                        "Missing MySQL environment variables from Railway. " +
                        "Required: MYSQLHOST, MYSQLDATABASE, MYSQLUSER, MYSQLPASSWORD"
                    );
                }
                
                // Build JDBC URL for Railway MySQL
                String jdbcUrl = "jdbc:mysql://" + mysqlHost + ":" + 
                               (mysqlPort != null ? mysqlPort : "3306") + 
                               "/" + mysqlDatabase + 
                               "?useSSL=false&allowPublicKeyRetrieval=true" +
                               "&serverTimezone=UTC&useUnicode=true&characterEncoding=UTF-8";
                
                System.out.println("Using JDBC URL: " + jdbcUrl.replace(mysqlPassword, "******"));
                System.out.println("Username: " + mysqlUser);

                Properties props = new Properties();
                props.put("hibernate.connection.driver_class", "com.mysql.cj.jdbc.Driver");
                props.put("hibernate.connection.url", jdbcUrl);
                props.put("hibernate.connection.username", mysqlUser);
                props.put("hibernate.connection.password", mysqlPassword);
                props.put("hibernate.dialect", "org.hibernate.dialect.MySQL8Dialect");
                props.put("hibernate.hbm2ddl.auto", "update");
                props.put("hibernate.show_sql", "true");
                
                // Important: Add connection properties for Railway MySQL
                props.put("hibernate.connection.provider_class", "org.hibernate.c3p0.internal.C3P0ConnectionProvider");
                props.put("hibernate.c3p0.min_size", "5");
                props.put("hibernate.c3p0.max_size", "20");
                props.put("hibernate.c3p0.timeout", "1800");
                props.put("hibernate.c3p0.max_statements", "50");
                props.put("hibernate.c3p0.idle_test_period", "300");
                props.put("hibernate.c3p0.acquire_increment", "2");
                
                // Additional MySQL optimizations
                props.put("hibernate.connection.characterEncoding", "UTF-8");
                props.put("hibernate.connection.useUnicode", "true");

                Configuration configuration = new Configuration();
                configuration.setProperties(props);

                configuration.addAnnotatedClass(RunningGroup.class);
                configuration.addAnnotatedClass(Runner.class);
                configuration.addAnnotatedClass(GroupMember.class);

                sessionFactory = configuration.buildSessionFactory();
                System.out.println("Hibernate SessionFactory created successfully!");

            } catch (Exception e) {
                System.err.println("Failed to initialize Hibernate:");
                e.printStackTrace();
                throw new RuntimeException("Failed to initialize Hibernate", e);
            }
        }

        return sessionFactory;
    }
}