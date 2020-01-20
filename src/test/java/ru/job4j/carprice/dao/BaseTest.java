package ru.job4j.carprice.dao;

import liquibase.Liquibase;
import liquibase.database.Database;
import liquibase.database.DatabaseFactory;
import liquibase.database.jvm.JdbcConnection;
import liquibase.exception.DatabaseException;
import liquibase.exception.LiquibaseException;
import liquibase.resource.ClassLoaderResourceAccessor;
import org.hibernate.Session;
import org.hibernate.internal.SessionImpl;
import ru.job4j.carprice.util.HibernateUtil;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 25.12.2019
 */
public class BaseTest {

  private static Liquibase liquibase;

  public static void initDb() throws LiquibaseException {
    Session session = HibernateUtil.getInstance().getSessionFactory().openSession();

    Database database = DatabaseFactory.getInstance()
        .findCorrectDatabaseImplementation(
            new JdbcConnection(((SessionImpl) session.getSession()).connection()));

    liquibase = new Liquibase("master.xml", new ClassLoaderResourceAccessor(), database);
    liquibase.update("test");

  }

  public static void dropDb() throws DatabaseException {
    liquibase.dropAll();
  }

}
