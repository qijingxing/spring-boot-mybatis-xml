package com.neo.controller;

import com.alibaba.fastjson.JSONObject;
import com.neo.WebSecurityConfig;
import com.neo.model.FileData;
import com.neo.model.User;
import com.neo.service.FiledataService;
import com.neo.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

/**
 * @author qijingxing
 * @create 2019-03-17 14:43
 */
@RestController
public class FiledataController {
    @Autowired
    private FiledataService filedataService;

    @RequestMapping(value ="/filedataSelectAll" , method = RequestMethod.GET)
    public Object filedataSelectAll(String id,String groupId){
        HashMap<String, Object> stringObjectHashMap = new HashMap<String, Object>();
        //List<FileData> fileDataList = filedataService.selectAll();
        System.out.println(groupId+"------------------------------------------");
        List<FileData> fileDataList = filedataService.selectAllbyid(id);
        stringObjectHashMap.put("datalist",fileDataList);

       return  stringObjectHashMap;

    }
    @RequestMapping(value ="/filedataSelectById" , method = RequestMethod.GET)
    public FileData filedataSelectById(String id){
        FileData fileDataList = filedataService.filedataSelectById(id);

       return  fileDataList;

    }
    @RequestMapping(value ="/updateFileDataSelectById" , method = RequestMethod.POST)
    public int updateFileDataSelectById(@RequestBody FileData fileData){

        return  filedataService.updateByPrimaryKey(fileData);

    }


}
