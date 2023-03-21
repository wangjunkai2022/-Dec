.class public Lcom/apk/x;
.super Ljava/lang/Object;
.source "CommentLoader.java"

# interfaces
.implements Lcom/apk/m80;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/User;->getNickName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v0, v0, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :cond_1
    :goto_0
    return-object v1
.end method
