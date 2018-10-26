package com.heiden.securitydemo1.dao;

import com.heiden.securitydemo1.model.Permission;

import java.util.List;

public interface PermissionDao {
    public List<Permission> findAll();
    public List<Permission> findByAdminUserId(int userId);
}
