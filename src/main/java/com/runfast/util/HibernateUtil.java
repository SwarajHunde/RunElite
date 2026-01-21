public static SessionFactory getSessionFactory() {

    if (sessionFactory == null) {
        try {

            String dbUrl = System.getenv("DB_URL");
            String dbUser = System.getenv("DB_USERNAME");
            String dbPass = System.getenv("DB_PASSWORD");

            System.out.println("===== ENV CHECK =====");
            System.out.println("DB_URL      = " + dbUrl);
            System.out.println("DB_USERNAME = " + dbUser);
            System.out.println("DB_PASSWORD = " + (dbPass == null ? "NULL" : "FOUND"));
            System.out.println("=====================");

            // 🔴 THIS IS THE MISSING PART
            if (dbUrl == null || dbUser == null || dbPass == null) {
                throw new RuntimeException(
                    "Database environment variables are missing. " +
                    "Please check DB_URL, DB_USERNAME, DB_PASSWORD in Railway."
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

            configuration.addAnnotatedClass(com.runfast.entity.RunningGroup.class);
            configuration.addAnnotatedClass(com.runfast.entity.Runner.class);
            configuration.addAnnotatedClass(com.runfast.entity.GroupMember.class);

            sessionFactory = configuration.buildSessionFactory();

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Failed to initialize Hibernate", e);
        }
    }

    return sessionFactory;
}
