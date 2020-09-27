package com.easy.popkart.dao.mapper;

import com.easy.popkart.dao.BaseMapper;
import com.easy.popkart.domain.dao.UserInfoDAO;
import com.easy.popkart.domain.dto.UserDTO;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper extends BaseMapper {
    @Override
    int saveObject();

    @Override
    int updateObject();

    @Override
    int removeObject();

    List<UserInfoDAO> listUser(UserDTO dto);

    UserInfoDAO userInfo(String account);
}