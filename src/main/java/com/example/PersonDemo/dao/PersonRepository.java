package com.example.PersonDemo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.PersonDemo.entity.Person;
@Repository
public interface PersonRepository extends JpaRepository<Person,Integer> {

}
