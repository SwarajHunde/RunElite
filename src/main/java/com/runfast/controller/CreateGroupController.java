package com.runfast.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.runfast.dao.RunningGroupDAO;
import com.runfast.entity.RunningGroup;

@Controller
public class CreateGroupController {

    @GetMapping("/createGroup")
    public String showForm() {
        return "createGroup";
    }
    


//    @PostMapping("/saveGroup")
//    public String saveGroup(
//            @RequestParam String groupName,
//            @RequestParam String location,
//            @RequestParam String runTime,
//            @RequestParam double distanceKm,   // ✅ FIXED
//            @RequestParam String createdBy,
//            RedirectAttributes redirect) {
//
//        RunningGroup group = new RunningGroup();
//        group.setGroupName(groupName);
//        group.setLocation(location);
//        group.setRunTime(runTime);
//        group.setDistanceKm(distanceKm);      // ✅ FIXED
//        group.setCreatedBy(createdBy);
//
//        RunningGroupDAO dao = new RunningGroupDAO();
//        dao.saveGroup(group);
//
//        redirect.addFlashAttribute("msg", "Group Created Successfully!");
//        return "redirect:/createGroup";
//    }
    
    
    @PostMapping("/saveGroup")
    public String saveGroup(
            @RequestParam String groupName,
            @RequestParam String location,
            @RequestParam String runTime,
            @RequestParam int distanceKm,
            @RequestParam String createdBy,
            @RequestParam String groupPassword,
            RedirectAttributes redirect) {

        RunningGroup group = new RunningGroup();
        group.setGroupName(groupName);
        group.setLocation(location);
        group.setRunTime(runTime);
        group.setDistanceKm(distanceKm);
        group.setCreatedBy(createdBy);
        group.setGroupPassword(groupPassword); // 🔐

        new RunningGroupDAO().saveGroup(group);

        redirect.addFlashAttribute("msg", "Group Created Successfully!");
        return "redirect:/createGroup";
    }

}
