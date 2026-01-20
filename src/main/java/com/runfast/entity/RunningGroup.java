package com.runfast.entity;

import javax.persistence.*;

@Entity
@Table(name = "running_group")
public class RunningGroup {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String groupName;
    private String location;
    private String runTime;
    private double distanceKm;
    private String createdBy;
    @Column(name = "group_password")
    private String groupPassword;



    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getRunTime() {
        return runTime;
    }

    public void setRunTime(String runTime) {
        this.runTime = runTime;
    }


    public double getDistanceKm() {
        return distanceKm;
    }

    public void setDistanceKm(double distanceKm) {
        this.distanceKm = distanceKm;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }
    
    public String getGroupPassword() {
        return groupPassword;
    }

    public void setGroupPassword(String groupPassword) {
        this.groupPassword = groupPassword;
    }
}
