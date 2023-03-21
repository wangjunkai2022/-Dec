.class public Lcom/apk/e7;
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
    iput-object p1, p0, Lcom/apk/e7;->do:Lcom/apk/b7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    const-string v0, "SP_XSTG2_SHELF_SHOW_DIALOG_KEY"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/apk/continue;->break:Lcom/biquge/ebook/app/bean/MhtgTwoBean;

    const-string v2, "SP_XSTG2_SHOW_DATE_KEY"

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/apk/kg;->do(JJ)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getMoredays()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getMoredays()I

    move-result v3

    if-ge v2, v3, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getMaxdays()I

    move-result v3

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getMoredays()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v3, v2

    const/4 v2, 0x1

    if-gtz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/apk/e7;->do:Lcom/apk/b7;

    invoke-static {v1, v0}, Lcom/apk/b7;->i(Lcom/apk/b7;Lcom/biquge/ebook/app/bean/MhtgTwoBean;)V

    const-string v0, "SP_XSTG2_SHOW_MANDATOR_KEY"

    .line 9
    sget-object v1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
