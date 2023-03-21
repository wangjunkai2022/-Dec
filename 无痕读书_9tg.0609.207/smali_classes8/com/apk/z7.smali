.class public Lcom/apk/z7;
.super Lcom/apk/yv;
.source "MainActivity.java"


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/MainActivity$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/yv;-><init>()V

    return-void
.end method


# virtual methods
.method public new(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 3

    const/4 p1, 0x0

    const-string v0, "SP_HOME_HAIBAO_IMAGE_POSITION_KEY"

    .line 1
    invoke-static {v0, p1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 2
    sget-object v1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v1, v0, p1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v2, "SP_HOME_HAIBAO_IMAGE_INTERBAL_KEY"

    invoke-virtual {p1, v2, v0, v1}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
