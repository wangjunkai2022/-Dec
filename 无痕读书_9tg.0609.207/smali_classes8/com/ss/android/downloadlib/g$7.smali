.class public Lcom/ss/android/downloadlib/g$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:I

.field public final synthetic d:Lcom/ss/android/download/api/download/DownloadEventConfig;

.field public final synthetic e:Lcom/ss/android/download/api/download/DownloadController;

.field public final synthetic f:Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

.field public final synthetic g:Lcom/ss/android/downloadlib/g;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/g;Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/g$7;->g:Lcom/ss/android/downloadlib/g;

    iput-object p2, p0, Lcom/ss/android/downloadlib/g$7;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/ss/android/downloadlib/g$7;->b:J

    iput p5, p0, Lcom/ss/android/downloadlib/g$7;->c:I

    iput-object p6, p0, Lcom/ss/android/downloadlib/g$7;->d:Lcom/ss/android/download/api/download/DownloadEventConfig;

    iput-object p7, p0, Lcom/ss/android/downloadlib/g$7;->e:Lcom/ss/android/download/api/download/DownloadController;

    iput-object p8, p0, Lcom/ss/android/downloadlib/g$7;->f:Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/g$7;->g:Lcom/ss/android/downloadlib/g;

    invoke-static {v0}, Lcom/ss/android/downloadlib/g;->b(Lcom/ss/android/downloadlib/g;)Lcom/ss/android/downloadlib/f;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/g$7;->a:Ljava/lang/String;

    iget-wide v3, p0, Lcom/ss/android/downloadlib/g$7;->b:J

    iget v5, p0, Lcom/ss/android/downloadlib/g$7;->c:I

    iget-object v6, p0, Lcom/ss/android/downloadlib/g$7;->d:Lcom/ss/android/download/api/download/DownloadEventConfig;

    iget-object v7, p0, Lcom/ss/android/downloadlib/g$7;->e:Lcom/ss/android/download/api/download/DownloadController;

    iget-object v8, p0, Lcom/ss/android/downloadlib/g$7;->f:Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

    invoke-virtual/range {v1 .. v8}, Lcom/ss/android/downloadlib/f;->a(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V

    return-void
.end method
