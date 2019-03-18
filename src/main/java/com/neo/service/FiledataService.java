package com.neo.service;

import com.neo.mapper.FileDataMapper;
import com.neo.model.FileData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author qijingxing
 * @create 2019-03-17 14:44
 */
@Service
public class FiledataService {
    @Autowired
    private FileDataMapper fileDataMapper;

    public List<FileData> selectAll() {
        return fileDataMapper.selectAll();
    }

    public FileData filedataSelectById(String id) {
        return fileDataMapper.selectByPrimaryKey(Integer.valueOf(id));
    }

    public int updateByPrimaryKey(FileData fileData) {
        return fileDataMapper.updateByPrimaryKey(fileData);
    }

    public List<FileData> selectAllbyid(String id) {
        return fileDataMapper.selectAllbyid(id);
    }
}
