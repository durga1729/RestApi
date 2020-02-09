package com.example.PersonDemo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.PersonDemo.entity.Person;

/**
 * It gives automatically DAO features
 * 
 *  @author Durga Guthula
 *
 */
@Repository
public interface PersonRepository extends JpaRepository<Person,Integer> {

}
