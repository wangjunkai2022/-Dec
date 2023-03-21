.class public Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean$YyconfBean;
.super Ljava/lang/Object;
.source "BaiduTtsConfigBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YyconfBean"
.end annotation


# instance fields
.field public yyapikey:Ljava/lang/String;

.field public yyappid:Ljava/lang/String;

.field public yyskey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getYyapikey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean$YyconfBean;->yyapikey:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getYyappid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean$YyconfBean;->yyappid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getYyskey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean$YyconfBean;->yyskey:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setYyapikey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean$YyconfBean;->yyapikey:Ljava/lang/String;

    return-void
.end method

.method public setYyappid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean$YyconfBean;->yyappid:Ljava/lang/String;

    return-void
.end method

.method public setYyskey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean$YyconfBean;->yyskey:Ljava/lang/String;

    return-void
.end method
