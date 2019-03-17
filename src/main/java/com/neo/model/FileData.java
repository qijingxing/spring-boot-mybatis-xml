package com.neo.model;

import java.util.Date;

public class FileData {
    private Integer id;

    private Integer fileId;

    private Integer smallId;

    private String nameCn;

    private String accid;

    private String teleNo;

    private String cid;

    private Boolean isJoin;

    private String isJoinCause;

    private String fourTeleKnow;

    private String teleConn;

    private String teleTrue;

    private Boolean joinWechat;

    private String payment;

    private String comment;

    private Boolean completeStatus;

    private Byte status;

    private Date ctime;

    private Date utime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getFileId() {
        return fileId;
    }

    public void setFileId(Integer fileId) {
        this.fileId = fileId;
    }

    public Integer getSmallId() {
        return smallId;
    }

    public void setSmallId(Integer smallId) {
        this.smallId = smallId;
    }

    public String getNameCn() {
        return nameCn;
    }

    public void setNameCn(String nameCn) {
        this.nameCn = nameCn == null ? null : nameCn.trim();
    }

    public String getAccid() {
        return accid;
    }

    public void setAccid(String accid) {
        this.accid = accid == null ? null : accid.trim();
    }

    public String getTeleNo() {
        return teleNo;
    }

    public void setTeleNo(String teleNo) {
        this.teleNo = teleNo == null ? null : teleNo.trim();
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid == null ? null : cid.trim();
    }

    public Boolean getIsJoin() {
        return isJoin;
    }

    public void setIsJoin(Boolean isJoin) {
        this.isJoin = isJoin;
    }

    public String getIsJoinCause() {
        return isJoinCause;
    }

    public void setIsJoinCause(String isJoinCause) {
        this.isJoinCause = isJoinCause == null ? null : isJoinCause.trim();
    }

    public String getFourTeleKnow() {
        return fourTeleKnow;
    }

    public void setFourTeleKnow(String fourTeleKnow) {
        this.fourTeleKnow = fourTeleKnow == null ? null : fourTeleKnow.trim();
    }

    public String getTeleConn() {
        return teleConn;
    }

    public void setTeleConn(String teleConn) {
        this.teleConn = teleConn == null ? null : teleConn.trim();
    }

    public String getTeleTrue() {
        return teleTrue;
    }

    public void setTeleTrue(String teleTrue) {
        this.teleTrue = teleTrue == null ? null : teleTrue.trim();
    }

    public Boolean getJoinWechat() {
        return joinWechat;
    }

    public void setJoinWechat(Boolean joinWechat) {
        this.joinWechat = joinWechat;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment == null ? null : payment.trim();
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
    }

    public Boolean getCompleteStatus() {
        return completeStatus;
    }

    public void setCompleteStatus(Boolean completeStatus) {
        this.completeStatus = completeStatus;
    }

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }

    public Date getCtime() {
        return ctime;
    }

    public void setCtime(Date ctime) {
        this.ctime = ctime;
    }

    public Date getUtime() {
        return utime;
    }

    public void setUtime(Date utime) {
        this.utime = utime;
    }
}