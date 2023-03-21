.class public Lcom/biquge/ebook/app/bean/ComicStoreBean$BannerBean;
.super Ljava/lang/Object;
.source "ComicStoreBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/bean/ComicStoreBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BannerBean"
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x17e815e7c7bd3c58L


# instance fields
.field public imgurl:Ljava/lang/String;

.field public param:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImgurl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/ComicStoreBean$BannerBean;->imgurl:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/ComicStoreBean$BannerBean;->param:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/ComicStoreBean$BannerBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setImgurl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/ComicStoreBean$BannerBean;->imgurl:Ljava/lang/String;

    return-void
.end method

.method public setParam(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/ComicStoreBean$BannerBean;->param:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/ComicStoreBean$BannerBean;->type:Ljava/lang/String;

    return-void
.end method
