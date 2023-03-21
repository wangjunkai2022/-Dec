package com.baidu.tts.f;

import com.apk.Cgoto;
import java.net.InetAddress;
import java.net.URL;
/* compiled from: UrlEnum.java */
/* loaded from: classes8.dex */
public enum o {
    TTS_SERVER("https://tsn.baidu.com/text2audio") { // from class: com.baidu.tts.f.o.1
        @Override // com.baidu.tts.f.o
        public String a(String str) {
            String c;
            if (str == null || (c = o.c(o.TTS_SERVER.a())) == null) {
                return null;
            }
            return str + "://" + c + "/text2audio";
        }

        @Override // com.baidu.tts.f.o
        public String b(String str) {
            if (str == null) {
                return null;
            }
            return Cgoto.m989case(str, "://tsn.baidu.com/text2audio");
        }
    },
    MODEL_SERVER("https://tts.baidu.com/bos/story.php?") { // from class: com.baidu.tts.f.o.2
        @Override // com.baidu.tts.f.o
        public String a(String str) {
            return null;
        }

        @Override // com.baidu.tts.f.o
        public String b(String str) {
            return null;
        }
    },
    STATISTICS_SERVER("http://upl.baidu.com/offline/confirm") { // from class: com.baidu.tts.f.o.3
        @Override // com.baidu.tts.f.o
        public String a(String str) {
            return null;
        }

        @Override // com.baidu.tts.f.o
        public String b(String str) {
            return null;
        }
    },
    STATISTICS_MODELLOAD_SERVER("https://upl.baidu.com/ttsdlstats") { // from class: com.baidu.tts.f.o.4
        @Override // com.baidu.tts.f.o
        public String a(String str) {
            return null;
        }

        @Override // com.baidu.tts.f.o
        public String b(String str) {
            return null;
        }
    },
    GETLICENSE_SERVER("https://upl.baidu.com/offline/auth") { // from class: com.baidu.tts.f.o.5
        @Override // com.baidu.tts.f.o
        public String a(String str) {
            return null;
        }

        @Override // com.baidu.tts.f.o
        public String b(String str) {
            return null;
        }
    };
    
    public final String f;

    public static String c(String str) {
        try {
            return InetAddress.getByName(new URL(str).getHost()).getHostAddress();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public String a() {
        return this.f;
    }

    public abstract String a(String str);

    public abstract String b(String str);

    o(String str) {
        this.f = str;
    }
}
