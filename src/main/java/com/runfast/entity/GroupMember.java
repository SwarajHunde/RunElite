package com.runfast.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(
    name = "group_member",
    uniqueConstraints = {
        @UniqueConstraint(columnNames = {"group_id", "runner_id"})
    }
)
public class GroupMember {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne(optional = false)
    @JoinColumn(name = "group_id", nullable = false)
    private RunningGroup group;

    @ManyToOne(optional = false)
    @JoinColumn(name = "runner_id", nullable = false)
    private Runner runner;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(nullable = false)
    private Date joinDate = new Date();

    // ===== Getters & Setters =====
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public RunningGroup getGroup() {
        return group;
    }

    public void setGroup(RunningGroup group) {
        this.group = group;
    }

    public Runner getRunner() {
        return runner;
    }

    public void setRunner(Runner runner) {
        this.runner = runner;
    }

    public Date getJoinDate() {
        return joinDate;
    }

    public void setJoinDate(Date joinDate) {
        this.joinDate = joinDate;
    }
}
