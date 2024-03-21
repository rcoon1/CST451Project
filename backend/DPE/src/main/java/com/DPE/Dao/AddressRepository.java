package com.DPE.Dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.DPE.Model.Address;

public interface AddressRepository extends JpaRepository<Address, Integer> {
}
