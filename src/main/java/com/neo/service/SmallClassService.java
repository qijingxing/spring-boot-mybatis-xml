package com.neo.service;

import com.neo.mapper.SmallClassMapper;
import com.neo.model.SmallClass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author qijingxing
 * @create 2019-03-19 21:40
 */
@Service
public class SmallClassService {
    @Autowired
    private SmallClassMapper smallClassMapper;

    public List<SmallClass> getGroupListByParentId(Integer parentId) {
        return smallClassMapper.getGroupListByParentId(parentId);
    }
}
