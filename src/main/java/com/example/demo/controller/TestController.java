package com.example.demo.controller;

import com.example.demo.entity.Tests;
import com.example.demo.service.TestService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RequiredArgsConstructor
@RestController
public class TestController {
    private final TestService testService;
    @GetMapping("/test")
    public Tests test(@RequestParam Long id){
        Optional<Tests> testOptional = testService.selectId(id);
        Tests test = testOptional.orElseGet(() -> new Tests()); // orElseGet에 null을 넣는 대신 새 객체를 반환하도록 수정
        System.out.println("이름 가져오기kj= " + test.getName());
        System.out.println("아이디 가져오기 = " + test.getId());
        return test;
    }
}
