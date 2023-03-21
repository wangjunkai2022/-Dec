package com.biquge.ebook.app.bean;

import android.content.ContentValues;
import com.baidu.tts.client.SpeechSynthesizer;
import org.litepal.LitePal;
import org.litepal.crud.LitePalSupport;

/* loaded from: classes8.dex */
public class ReadFootprint extends LitePalSupport {
    public String chapterId;
    public String rId;
    public int readPage;
    public String type;

    public ReadFootprint(String str, String str2) {
        this.type = str;
        this.rId = str2;
    }

    public static void addComicFootprint(String str, String str2, int i) {
        try {
            if (getComicFootprint(str) == null) {
                ReadFootprint readFootprint = new ReadFootprint("1", str);
                readFootprint.setChapterId(str2);
                readFootprint.setReadPage(i);
                readFootprint.save();
            } else {
                ContentValues contentValues = new ContentValues();
                contentValues.put("chapterId", str2);
                contentValues.put("readPage", Integer.valueOf(i));
                LitePal.updateAll(ReadFootprint.class, contentValues, "type = ? and rId = ?", "1", str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void addNovelFootprint(String str, String str2, int i) {
        try {
            if (getNovelFootprint(str) == null) {
                ReadFootprint readFootprint = new ReadFootprint(SpeechSynthesizer.REQUEST_DNS_OFF, str);
                readFootprint.setChapterId(str2);
                readFootprint.setReadPage(i);
                readFootprint.save();
            } else {
                ContentValues contentValues = new ContentValues();
                contentValues.put("chapterId", str2);
                contentValues.put("readPage", Integer.valueOf(i));
                LitePal.updateAll(ReadFootprint.class, contentValues, "type = ? and rId = ?", SpeechSynthesizer.REQUEST_DNS_OFF, str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void addPicFootprint(String str, String str2, int i) {
        try {
            if (getPicFootprint(str, str2) == null) {
                ReadFootprint readFootprint = new ReadFootprint("2", str);
                readFootprint.setChapterId(str2);
                readFootprint.setReadPage(i);
                readFootprint.save();
            } else {
                ContentValues contentValues = new ContentValues();
                contentValues.put("chapterId", str2);
                contentValues.put("readPage", Integer.valueOf(i));
                LitePal.updateAll(ReadFootprint.class, contentValues, "type = ? and rId = ?", "2", str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static ReadFootprint getComicFootprint(String str) {
        try {
            return (ReadFootprint) LitePal.where("type = ? and rId = ?", "1", str).findFirst(ReadFootprint.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static ReadFootprint getNovelFootprint(String str) {
        return (ReadFootprint) LitePal.where("type = ? and rId = ?", SpeechSynthesizer.REQUEST_DNS_OFF, str).findFirst(ReadFootprint.class);
    }

    public static ReadFootprint getPicFootprint(String str, String str2) {
        try {
            return (ReadFootprint) LitePal.where("type = ? and rId = ? and chapterId = ?", "2", str, str2).findFirst(ReadFootprint.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void removeNovelFootprint(String str) {
        LitePal.deleteAll(ReadFootprint.class, "type = ? and rId = ?", SpeechSynthesizer.REQUEST_DNS_OFF, str);
    }

    public String getChapterId() {
        String str = this.chapterId;
        return str == null ? "" : str;
    }

    public int getReadPage() {
        return this.readPage;
    }

    public String getType() {
        return this.type;
    }

    public String getrId() {
        String str = this.rId;
        return str == null ? "" : str;
    }

    public void setChapterId(String str) {
        this.chapterId = str;
    }

    public void setReadPage(int i) {
        this.readPage = i;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setrId(String str) {
        this.rId = str;
    }
}
