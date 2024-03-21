package com.DPE.Dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.DPE.Model.User;

public interface UserRepository extends JpaRepository<User, Integer> {
    User findByUserName(String username);
}
