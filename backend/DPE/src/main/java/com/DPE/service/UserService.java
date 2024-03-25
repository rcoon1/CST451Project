package com.DPE.service;

import com.DPE.dto.requests.NewUserRequest;

public interface UserService {
    public String createNewAccount(NewUserRequest newUserRequest);
    public String updateUserRecord(NewUserRequest newUserRequest, int userId);
}
