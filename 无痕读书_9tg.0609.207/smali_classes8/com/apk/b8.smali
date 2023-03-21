.class public Lcom/apk/b8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/apk/v60;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/b8;->if:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    iput-object p2, p0, Lcom/apk/b8;->do:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 0

    return-void
.end method

.method public else()V
    .locals 0

    return-void
.end method

.method public if(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/b8;->if:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->static:Z

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 5
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "SP_SHOW_MAIN_PUPINSERT_AD_TIME_KEY"

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public onAdClick()V
    .locals 0

    return-void
.end method

.method public onAdClose()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/b8;->if:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->throws:Lcom/apk/c60;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/c60;->else()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/b8;->if:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->static:Z

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v3, "SP_SHOW_MAIN_PUPINSERT_AD_TIME_KEY"

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public onAdShow()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public onVideoCached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/b8;->if:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    .line 2
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->throws:Lcom/apk/c60;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lcom/apk/c60;->goto(Landroid/app/Activity;)Z

    :cond_0
    return-void
.end method
