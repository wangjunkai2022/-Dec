package com.biquge.ebook.app.bean;

import java.io.Serializable;
/* loaded from: classes8.dex */
public class DownloadFileModel implements Serializable {
    public static final long serialVersionUID = 2695750664191614997L;
    public String info;
    public String name;
    public String savePath;
    public String url;
    public boolean isInstall = true;
    public boolean isShowToast = true;
    public boolean isShowNotice = true;
}
