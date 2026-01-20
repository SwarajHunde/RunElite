package com.runfast.dao;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.Transaction;

import com.runfast.entity.*;
import com.runfast.util.HibernateUtil;

public class JoinGroupDAO {
	
	public long getMemberCountByGroupId(int groupId) {

	    Session session = HibernateUtil.getSessionFactory().openSession();

	    Long count = session.createQuery(
	            "select count(*) from GroupMember where group.id = :gid",
	            Long.class)
	        .setParameter("gid", groupId)
	        .uniqueResult();

	    session.close();
	    return count == null ? 0 : count;
	}
	public List<GroupMember> getMembersByGroupId(int groupId) {
	    Session session = HibernateUtil.getSessionFactory().openSession();

	    List<GroupMember> list = session.createQuery(
	        "from GroupMember where group.id = :gid",
	        GroupMember.class)
	        .setParameter("gid", groupId)
	        .list();

	    session.close();
	    return list;
	}


    public void saveRunnerAndJoin(GroupMember member) {

        Session session = null;
        Transaction tx = null;

        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();

            // 1️⃣ Load managed group
            RunningGroup managedGroup =
                    session.get(RunningGroup.class, member.getGroup().getId());

            if (managedGroup == null) {
                throw new RuntimeException("Group not found");
            }

            // 2️⃣ Save runner
            session.save(member.getRunner());

            // 3️⃣ Save group-member mapping
            member.setGroup(managedGroup);
            session.save(member);

            tx.commit();

        } catch (Exception e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
        } finally {
            if (session != null) session.close();
        }
    }
}
