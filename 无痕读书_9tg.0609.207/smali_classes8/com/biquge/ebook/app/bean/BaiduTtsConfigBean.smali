.class public Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;
.super Ljava/lang/Object;
.source "BaiduTtsConfigBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean$YyconfBean;
    }
.end annotation


# instance fields
.field public index:I

.field public tagStr:Ljava/lang/String;

.field public yyconf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean$YyconfBean;",
            ">;"
        }
    .end annotation
.end field

.field public yyonline:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;->index:I

    return v0
.end method

.method public getTagStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;->tagStr:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getYyconf()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean$YyconfBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;->yyconf:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getYyonline()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;->yyonline:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;->index:I

    return-void
.end method

.method public setTagStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;->tagStr:Ljava/lang/String;

    return-void
.end method

.method public setYyconf(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean$YyconfBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;->yyconf:Ljava/util/List;

    return-void
.end method

.method public setYyonline(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;->yyonline:Ljava/lang/String;

    return-void
.end method
