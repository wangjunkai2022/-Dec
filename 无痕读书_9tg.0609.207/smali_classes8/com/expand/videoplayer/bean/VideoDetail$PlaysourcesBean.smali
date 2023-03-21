.class public Lcom/expand/videoplayer/bean/VideoDetail$PlaysourcesBean;
.super Ljava/lang/Object;
.source "VideoDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/expand/videoplayer/bean/VideoDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaysourcesBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/expand/videoplayer/bean/VideoDetail$PlaysourcesBean$PlayurlsBean;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x5bc277642d6c64f6L


# instance fields
.field public navlabel:Ljava/lang/String;

.field public playurls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/expand/videoplayer/bean/VideoDetail$PlaysourcesBean$PlayurlsBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNavlabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail$PlaysourcesBean;->navlabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayurls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/expand/videoplayer/bean/VideoDetail$PlaysourcesBean$PlayurlsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/VideoDetail$PlaysourcesBean;->playurls:Ljava/util/List;

    return-object v0
.end method

.method public setNavlabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail$PlaysourcesBean;->navlabel:Ljava/lang/String;

    return-void
.end method

.method public setPlayurls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/expand/videoplayer/bean/VideoDetail$PlaysourcesBean$PlayurlsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/VideoDetail$PlaysourcesBean;->playurls:Ljava/util/List;

    return-void
.end method
