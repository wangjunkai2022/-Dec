.class public Lcom/biquge/ebook/app/bean/DownloadFileModel;
.super Ljava/lang/Object;
.source "DownloadFileModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x25693af2462a2015L


# instance fields
.field public info:Ljava/lang/String;

.field public isInstall:Z

.field public isShowNotice:Z

.field public isShowToast:Z

.field public name:Ljava/lang/String;

.field public savePath:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/biquge/ebook/app/bean/DownloadFileModel;->isInstall:Z

    .line 3
    iput-boolean v0, p0, Lcom/biquge/ebook/app/bean/DownloadFileModel;->isShowToast:Z

    .line 4
    iput-boolean v0, p0, Lcom/biquge/ebook/app/bean/DownloadFileModel;->isShowNotice:Z

    return-void
.end method
