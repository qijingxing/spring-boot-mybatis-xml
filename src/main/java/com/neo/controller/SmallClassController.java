package com.neo.controller;

import com.neo.model.FileData;
import com.neo.model.SmallClass;
import com.neo.service.FiledataService;
import com.neo.service.SmallClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

/**
 * @author qijingxing
 * @create 2019-03-19 21:36
 */
@RestController
public class SmallClassController {

    @Autowired
    private SmallClassService smallClassService;

    @RequestMapping(value ="/getGroupList" , method = RequestMethod.GET)
    public Object filedataSelectAll(Integer parentId){
        HashMap<String, Object> stringObjectHashMap = new HashMap<String, Object>();
        List<SmallClass> smallClass = smallClassService.getGroupListByParentId(parentId);
        stringObjectHashMap.put("datalist",smallClass);

        return  stringObjectHashMap;

    }

}
