package com.easy.popkart.dao.jpa;

import com.easy.popkart.domain.entity.UserInfoEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserRepository extends JpaRepository<UserInfoEntity, String> {
    List<UserInfoEntity> findByUserNameContaining(String userName);

    UserInfoEntity findByAccountAndPasswordAndValidIsTrue(String account, String password);
}
