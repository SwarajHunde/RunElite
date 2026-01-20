package com.runfast.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.runfast.dao.JoinGroupDAO;
import com.runfast.dao.RunningGroupDAO;
import com.runfast.entity.*;

@Controller
public class JoinGroupController {

    // ==============================
    // SHOW ALL GROUPS + MEMBER COUNT
    // ==============================
    @GetMapping("/joinGroup")
    public String joinGroup(Model model) {

        RunningGroupDAO groupDao = new RunningGroupDAO();
        JoinGroupDAO joinDao = new JoinGroupDAO();

        List<RunningGroup> groups = groupDao.getAllGroups();

        // Map<groupId, memberCount>
        Map<Integer, Long> memberCountMap = new HashMap<>();

        for (RunningGroup g : groups) {
            long count = joinDao.getMemberCountByGroupId(g.getId());
            memberCountMap.put(g.getId(), count);
        }

        model.addAttribute("groups", groups);
        model.addAttribute("memberCount", memberCountMap);

        return "joinGroup";
    }

    // ==============================
    // OPEN RUNNER REGISTRATION FORM
    // ==============================
    @GetMapping("/join/{groupId}")
    public String showJoinForm(@PathVariable int groupId, Model model) {
        model.addAttribute("groupId", groupId);
        return "runnerRegister";
    }

    // ==============================
    // SAVE RUNNER + JOIN GROUP
    // ==============================
    @PostMapping("/join/save")
    public String saveRunner(
            @RequestParam int groupId,
            @RequestParam String name,
            @RequestParam String email,
            @RequestParam String phone,
            @RequestParam int age) {

        Runner runner = new Runner();
        runner.setName(name);
        runner.setEmail(email);
        runner.setPhone(phone);
        runner.setAge(age);

        RunningGroup group = new RunningGroup();
        group.setId(groupId);

        GroupMember member = new GroupMember();
        member.setRunner(runner);
        member.setGroup(group);

        new JoinGroupDAO().saveRunnerAndJoin(member);

        return "redirect:/joinGroup";
    }

    // ==============================
    // FIX /join/ 404 ISSUE
    // ==============================
    @GetMapping("/join/")
    public String joinSlashFix() {
        return "redirect:/joinGroup";
    }
    
    @GetMapping("/group/{groupId}/verify")
    public String showPasswordPage(@PathVariable int groupId, Model model) {
        model.addAttribute("groupId", groupId);
        return "verifyPassword";
    }

    @PostMapping("/group/verify")
    public String verifyPassword(
            @RequestParam int groupId,
            @RequestParam String password,
            Model model) {

        RunningGroup group =
            new RunningGroupDAO().getGroupById(groupId);

        if (group == null) {
            return "redirect:/joinGroup";
        }

        if (!group.getGroupPassword().equals(password)) {
            model.addAttribute("groupId", groupId);
            model.addAttribute("error", "Invalid password");
            return "verifyPassword";
        }

        return "redirect:/group/" + groupId + "/members";
    }
    @GetMapping("/group/{groupId}/members")
    public String viewMembers(@PathVariable int groupId, Model model) {

        model.addAttribute("group",
            new RunningGroupDAO().getGroupById(groupId));

        model.addAttribute("members",
            new JoinGroupDAO().getMembersByGroupId(groupId));

        return "viewMembers";
    }

}
