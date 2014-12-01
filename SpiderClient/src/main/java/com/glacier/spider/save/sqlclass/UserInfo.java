package com.glacier.spider.save.sqlclass;

import com.glacier.spider.weibo4j.model.User;

/**
 * Created by glacier on 14-11-26.
 */
public class UserInfo {
    int id;
    String uid, screen_name, name, location, description, url, profileImageUrl;
    String followersCount, friendsCount, statusesCount, favourites, createdAt;
    String gender, biFollowersCount, avatarLarge;

    public UserInfo(User user) {
        this.setUid(user.getId());
        this.setScreen_name(user.getScreenName());
        this.setName(user.getName());
        this.setLocation(user.getLocation());
        this.setDescription(user.getDescription());
        this.setUrl(user.getUrl());
        this.setProfileImageUrl(user.getProfileImageUrl());
        this.setFollowersCount(user.getFollowersCount()+"");
        this.setFriendsCount(user.getFriendsCount()+"");
        this.setStatusesCount(user.getStatusesCount()+"");
        this.setFavourites(user.getFavouritesCount()+"");
        this.setCreatedAt(user.getCreatedAt()+"");
        this.setGender(user.getGender());
        this.setBiFollowersCount(user.getBiFollowersCount()+"");
        this.setAvatarLarge(user.getAvatarLarge());
    }

    public String toString() {
        return getUid()+"\t"+getScreen_name()+"\t"+getLocation();
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

    public String getScreen_name() {
        return screen_name;
    }

    public void setScreen_name(String screen_name) {
        this.screen_name = screen_name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getProfileImageUrl() {
        return profileImageUrl;
    }

    public void setProfileImageUrl(String profileImageUrl) {
        this.profileImageUrl = profileImageUrl;
    }

    public String getFollowersCount() {
        return followersCount;
    }

    public void setFollowersCount(String followersCount) {
        this.followersCount = followersCount;
    }

    public String getFriendsCount() {
        return friendsCount;
    }

    public void setFriendsCount(String friendsCount) {
        this.friendsCount = friendsCount;
    }

    public String getStatusesCount() {
        return statusesCount;
    }

    public void setStatusesCount(String statusesCount) {
        this.statusesCount = statusesCount;
    }

    public String getFavourites() {
        return favourites;
    }

    public void setFavourites(String favourites) {
        this.favourites = favourites;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBiFollowersCount() {
        return biFollowersCount;
    }

    public void setBiFollowersCount(String biFollowersCount) {
        this.biFollowersCount = biFollowersCount;
    }

    public void setAvatarLarge(String avatar_large) {   this.avatarLarge = avatar_large;   }

    public String getAvatarLarge() {    return avatarLarge;    }
}
