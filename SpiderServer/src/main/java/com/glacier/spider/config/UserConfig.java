package com.glacier.spider.config;

import java.sql.Date;

/**
 * Created by glacier on 14-11-29.
 */
public class UserConfig {
    int id, aid;
    String uid;
    String conf;
    String email;
    Date submit_date;

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getUid() {
        return uid;
    }
    public void setUid(String uid) {
        this.uid = uid;
    }
    public int getAid() {
        return aid;
    }
    public void setAid(int aid) {
        this.aid = aid;
    }
    public String getConf() {
        return conf;
    }
    public void setConf(String conf) {
        this.conf = conf;
    }
    public Date getSubmit_date() {
        return submit_date;
    }
    public void setSubmit_date(Date submit_date) {
        this.submit_date = submit_date;
    }

}
