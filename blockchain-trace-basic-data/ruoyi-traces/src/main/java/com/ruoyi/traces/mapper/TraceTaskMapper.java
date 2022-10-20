package com.ruoyi.traces.mapper;

import com.ruoyi.traces.domain.TraceTask;

import java.util.List;

public interface TraceTaskMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table trace_task
     *
     * @mbg.generated Sun Nov 08 23:25:21 CST 2020
     */
    int deleteByPrimaryKey(String taskId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table trace_task
     *
     * @mbg.generated Sun Nov 08 23:25:21 CST 2020
     */
    int insert(TraceTask record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table trace_task
     *
     * @mbg.generated Sun Nov 08 23:25:21 CST 2020
     */
    int insertSelective(TraceTask record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table trace_task
     *
     * @mbg.generated Sun Nov 08 23:25:21 CST 2020
     */
    TraceTask selectByPrimaryKey(String taskId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table trace_task
     *
     * @mbg.generated Sun Nov 08 23:25:21 CST 2020
     */
    int updateByPrimaryKeySelective(TraceTask record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table trace_task
     *
     * @mbg.generated Sun Nov 08 23:25:21 CST 2020
     */
    int updateByPrimaryKey(TraceTask record);

    TraceTask queryTaskByCropsId(String cropsId);

    List<TraceTask> queryTaskList();
}