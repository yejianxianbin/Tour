package com.ssm.maven.core.dao;

import java.util.List;
import java.util.Map;

import com.ssm.maven.core.entity.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {

    /**
     * 登录
     *
     * @param user
     * @return
     */
    public User login(User user);

    /**
     * 查找用户列表
     *
     * @param map
     * @return
     */
    public List<User> findUsers(Map<String, Object> map);

    /**
     * @param map
     * @return
     */
    public Long getTotalUser(Map<String, Object> map);

    /**
     * 实体修改
     *
     * @param user
     * @return
     */
    public int updateUser(User user);

    /**
     * 添加用户
     *
     * @param user
     * @return
     */
    public int addUser(User user);

    /**
     * 删除用户
     *
     * @param id
     * @return
     */
    public int deleteUser(Integer id);
}
