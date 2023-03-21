.class public Lcom/expand/videoplayer/bean/VideoDetail$PlaysourcesBean$PlayurlsBean;
.super Ljava/lang/Object;
.source "VideoDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/expand/videoplayer/bean/VideoDetail$PlaysourcesBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayurlsBean"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x1401c3773eb7f1c4L


# instance fields
.field public cId:I

.field public label:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/expand/videoplayer/bean/VideoDetail$PlaysourcesBean$PlayurlsBean;->cId:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail$PlaysourcesBean$PlayurlsBean;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail$PlaysourcesBean$PlayurlsBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/expand/videoplayer/bean/VideoDetail$PlaysourcesBean$PlayurlsBean;->cId:I

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail$PlaysourcesBean$PlayurlsBean;->label:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail$PlaysourcesBean$PlayurlsBean;->url:Ljava/lang/String;

    return-void
.end method
