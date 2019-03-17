package com.neo.mapper;

import com.neo.model.FileData;

import java.util.List;

public interface FileDataMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FileData record);

    int insertSelective(FileData record);

    FileData selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FileData record);

    int updateByPrimaryKey(FileData record);

    List<FileData> selectAll();
}