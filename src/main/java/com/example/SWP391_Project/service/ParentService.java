package com.example.SWP391_Project.service;

import com.example.SWP391_Project.dto.EnrollmentDto;
import com.example.SWP391_Project.model.Attendance;
import com.example.SWP391_Project.model.Course;
import com.example.SWP391_Project.model.Result;
import com.example.SWP391_Project.model.Slot;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ParentService {
    // Register class
    void enrollStudentInCourse(EnrollmentDto enrollmentDto, int parentId);

    // View student progress, info (result, slot, course, attendance)
    List<Result> getStudentResults(int parentId);

    List<Slot> getStudentSlots(int parentId);

    List<Course> getStudentCourses(int parentId);

    List<Attendance> getStudentAttendances(int parentId);

}
