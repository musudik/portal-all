package com.optum.portal.api.service;

import com.optum.portal.api.model.EnrollProgramRequest;
import com.optum.portal.api.model.Program;
import com.optum.portal.api.model.Reward;
import com.optum.portal.api.model.User;
import com.optum.portal.api.repository.IProgramRepository;
import com.optum.portal.api.repository.IRewardRepository;
import com.optum.portal.api.repository.IUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class ProgramService {

    @Autowired
    private IProgramRepository programRepository;

    @Autowired
    private IUserRepository userRepository;

    @Autowired
    private IRewardRepository rewardRepository;

    /**
     * save program
     * @param program
     * @return
     */
    public Program save(Program program) {
        if(program.getProgramId() != null) {
            program.setUpdatedDate(new Date());
            program.setUpdatedBy("System");
        } else {
            program.setCreatedDate(new Date());
            program.setCreatedBy("System");
        }
        return programRepository.save(program);
    }

    /**
     * list all available programs
     * @return
     */
    public List<Program> listPrograms() { return programRepository.findAll(); }

    /**
     * get a program by name
     * @param name
     * @return
     */
    public Program getProgramByName(String name) { return programRepository.findByName(name); }

    /**
     * register user for a program
     * @param request
     * @return
     */
    public User registerProgram(EnrollProgramRequest request) {
        User selectedUser = null;
        Optional<User> user = userRepository.findById(request.getUserId());
        if(user.isPresent()) {
            selectedUser = user.get();
            List<Program> programs = listPrograms();
            List<Program> selectedPrograms = programs.stream().filter(p -> request.getProgramIds().contains(p.getProgramId())).collect(Collectors.toList());
            if(selectedUser.getPrograms() == null) {
                selectedUser.setPrograms(new ArrayList<>());
            }
            selectedUser.getPrograms().addAll(selectedPrograms);
            selectedUser = userRepository.save(selectedUser);

            int programsRegistered =  selectedUser.getPrograms().size();
            if(programsRegistered > 1) {
                List<Reward> rewardsList = rewardRepository.findAll();
                switch (programsRegistered) {
                    case 2:
                        selectedUser.getRewards().add(rewardsList.get(0));
                        break;
                    case 4:
                        selectedUser.getRewards().add(rewardsList.get(1));
                        break;
                    case 5:
                        selectedUser.getRewards().add(rewardsList.get(2));
                        break;
                    case 6:
                        selectedUser.getRewards().add(rewardsList.get(3));
                        break;
                }
                selectedUser = userRepository.save(selectedUser);
            }
        }
        return selectedUser;
    }

    /**
     * deregister user for a program
     * @param request
     * @return
     */
    public User deregisterProgram(EnrollProgramRequest request) {
        User selectedUser = null;
        Optional<User> user = userRepository.findById(request.getUserId());
        if(user.isPresent()) {
            selectedUser = user.get();
            selectedUser.getPrograms().removeIf(p -> request.getProgramIds().contains(p.getProgramId()));
            selectedUser = userRepository.save(selectedUser);
        }
        return selectedUser;
    }
}
