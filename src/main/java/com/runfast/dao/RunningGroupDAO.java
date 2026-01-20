package com.runfast.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.runfast.entity.RunningGroup;
import com.runfast.util.HibernateUtil;

public class RunningGroupDAO {

    public void saveGroup(RunningGroup group) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.save(group);
        session.close();
    }

    public List<RunningGroup> getAllGroups() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<RunningGroup> list =
                session.createQuery("from RunningGroup", RunningGroup.class).list();
        session.close();
        return list;
    }
    
    public List<RunningGroup> getGroupsByLocation(String location) {
        Session session = HibernateUtil.getSessionFactory().openSession();

        List<RunningGroup> list = session.createQuery(
                "from RunningGroup where location like :loc",
                RunningGroup.class)
            .setParameter("loc", "%" + location + "%")
            .list();

        session.close();
        return list;
    }
    
    public RunningGroup getGroupById(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        RunningGroup group = session.get(RunningGroup.class, id);
        session.close();
        return group;
    }

}
