.class public Lcom/apk/g7;
.super Ljava/lang/Object;
.source "BaseReadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/b7;


# direct methods
.method public constructor <init>(Lcom/apk/b7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/g7;->do:Lcom/apk/b7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "SP_MHTG2_SHOW_MANDATOR_KEY"

    .line 1
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lcom/apk/continue;->this:Lcom/biquge/ebook/app/bean/MhtgTwoBean;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-static {v0, v2}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/g7;->do:Lcom/apk/b7;

    invoke-static {v0, v1}, Lcom/apk/b7;->j(Lcom/apk/b7;Lcom/biquge/ebook/app/bean/MhtgTwoBean;)V

    goto :goto_0

    :cond_0
    const-string v3, "SP_MHTG2_SHELF_SHOW_DIALOG_KEY"

    .line 5
    invoke-static {v3, v2}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "SP_MHTG2_SHOW_DATE_KEY"

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v3

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/apk/kg;->do(JJ)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 8
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getMoredays()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getMoredays()I

    move-result v4

    if-ge v3, v4, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getMaxdays()I

    move-result v4

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getMoredays()I

    move-result v5

    sub-int/2addr v3, v5

    sub-int/2addr v4, v3

    const/4 v3, 0x1

    if-gtz v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    .line 10
    iget-object v2, p0, Lcom/apk/g7;->do:Lcom/apk/b7;

    invoke-static {v2, v1}, Lcom/apk/b7;->j(Lcom/apk/b7;Lcom/biquge/ebook/app/bean/MhtgTwoBean;)V

    .line 11
    sget-object v1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v1, v0, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
