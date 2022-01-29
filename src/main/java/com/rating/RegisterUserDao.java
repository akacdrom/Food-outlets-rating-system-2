package com.rating;

import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class RegisterUserDao {
    public void saveRegisteredUser(RegisterUser registerUser){
        Transaction transaction = null;
        try (Session session = SessionFactorySingleton.getSessionFactory().openSession()){
            transaction = session.beginTransaction();
            System.out.println(transaction);
            session.save(registerUser);
            transaction.commit();
        }
    }
    public void updateRegisteredUser(RegisterUser registerUser){
        Transaction transaction = null;
        try (Session session = SessionFactorySingleton.getSessionFactory().openSession()){
            transaction = session.beginTransaction();
            session.saveOrUpdate(registerUser);
            transaction.commit();
        }
    }
    public RegisterUser getRegisteredUserById(long id){
        Transaction transaction = null;
        RegisterUser registerUser = null;
        try (Session session = SessionFactorySingleton.getSessionFactory().openSession()){
            transaction = session.beginTransaction();
            registerUser = session.get(RegisterUser.class, id);
            transaction.commit();
        }
        return registerUser;
    }
    public List<RegisterUser> getAllRegisteredUsers(){
        Transaction transaction = null;
        List<RegisterUser> registerUsers = null;
        try (Session session = SessionFactorySingleton.getSessionFactory().openSession()){
            transaction = session.beginTransaction();
            registerUsers = session.createQuery("from et_user").list();
            transaction.commit();
        }
        return registerUsers;
    }
    public void deleteRegisteredUser(long id){
        Transaction transaction = null;
        RegisterUser registerUser = null;
        try (Session session = SessionFactorySingleton.getSessionFactory().openSession()){
            transaction = session.beginTransaction();
            registerUser = session.get(RegisterUser.class, id);
            session.delete(registerUser);
            transaction.commit();
        }
    }
}
