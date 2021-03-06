package com.easy.popkart.service;

import com.easy.popkart.domain.dto.BaseDTO;
import com.easy.popkart.domain.dto.JsonResult;

public interface BaseService {
    JsonResult saveObject(BaseDTO dto);
    JsonResult updateObject(BaseDTO dto);
    JsonResult removeObject(BaseDTO dto);
    JsonResult getSingleObject(BaseDTO dto);
    JsonResult listObjectFactory(BaseDTO dto);
}
