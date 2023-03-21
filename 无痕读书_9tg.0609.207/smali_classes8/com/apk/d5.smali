.class public Lcom/apk/d5;
.super Ljava/lang/Object;
.source "UserPresenter.java"

# interfaces
.implements Lcom/apk/uv;


# instance fields
.field public final synthetic do:Lcom/apk/g5;


# direct methods
.method public constructor <init>(Lcom/apk/g5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/d5;->do:Lcom/apk/g5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->else()Lcom/biquge/ebook/app/bean/User;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "SP_REMOVE_ACCOUNT_KEY"

    .line 2
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/apk/else;->for(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CacheBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    :try_start_0
    const-class v3, Lcom/biquge/ebook/app/bean/CacheBean;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "url = ?"

    aput-object v5, v4, v2

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CacheBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/apk/else;->case(Ljava/lang/String;)Z

    .line 8
    iget-object v0, p0, Lcom/apk/d5;->do:Lcom/apk/g5;

    invoke-static {v0, v2, v2}, Lcom/apk/g5;->for(Lcom/apk/g5;ZZ)V

    :cond_1
    return-void
.end method
