package com.heiden.securitydemo1.dao;

import com.heiden.securitydemo1.model.SysUser;

public interface UserDao {
    public SysUser findByUserName(String username);
}
