package com.DPE.Dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.DPE.Model.Authority;

public interface AuthorityRepository extends JpaRepository<Authority, Integer> {

    public Authority findByRoleCode(String roleCode);
}
