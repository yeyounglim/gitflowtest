package com.example.demo.service;

import com.example.demo.entity.Tests;
import com.example.demo.repository.TestRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@RequiredArgsConstructor
@Service
public class TestService {
    private final TestRepository repository;
    public Optional<Tests> selectId(Long id){
        return repository.findById(id);
    }
}
