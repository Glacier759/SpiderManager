package com.glacier.spider.mail;

/**
 * Created by glacier on 14-11-29.
 */
public class Mail {

    private MailSenderInfo mailSenderInfo= new MailSenderInfo();

    public Mail() {
        mailSenderInfo.setMailServerHost("smtp.exmail.qq.com");
        mailSenderInfo.setMailServerPort("25");
        mailSenderInfo.setValidate(true);
        mailSenderInfo.setUserName("spider@xiyoulinux.org");
        mailSenderInfo.setPassword("ceshishiyong2014");
        mailSenderInfo.setFromAddress("spider@xiyoulinux.org");
    }

    public void sendMail(String email, String title, String content) {
        mailSenderInfo.setToAddress(email);
        mailSenderInfo.setSubject(title);
        mailSenderInfo.setContent(content);

        SimpleMailSender sms = new SimpleMailSender();
        sms.sendTextMail(mailSenderInfo);
    }

    public static void main(String[] args) {
        Mail mail = new Mail();
        mail.sendMail("421186071@qq.com", "测试邮件标题", "测试邮件正文");
    }
}
