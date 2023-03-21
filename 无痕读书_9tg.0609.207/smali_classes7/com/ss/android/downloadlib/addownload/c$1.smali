.class public Lcom/ss/android/downloadlib/addownload/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/c;->a(Lcom/ss/android/downloadlib/addownload/e;ILcom/ss/android/download/api/download/DownloadModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/ss/android/downloadlib/addownload/e;

.field public final synthetic b:I

.field public final synthetic c:Lcom/ss/android/download/api/download/DownloadModel;

.field public final synthetic d:Lcom/ss/android/downloadlib/addownload/c;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/c;Lcom/ss/android/downloadlib/addownload/e;ILcom/ss/android/download/api/download/DownloadModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/c$1;->d:Lcom/ss/android/downloadlib/addownload/c;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/c$1;->a:Lcom/ss/android/downloadlib/addownload/e;

    iput p3, p0, Lcom/ss/android/downloadlib/addownload/c$1;->b:I

    iput-object p4, p0, Lcom/ss/android/downloadlib/addownload/c$1;->c:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/c$1;->d:Lcom/ss/android/downloadlib/addownload/c;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/c$1;->a:Lcom/ss/android/downloadlib/addownload/e;

    iget v2, p0, Lcom/ss/android/downloadlib/addownload/c$1;->b:I

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/c$1;->c:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/ss/android/downloadlib/addownload/c;->a(Lcom/ss/android/downloadlib/addownload/e;ZILcom/ss/android/download/api/download/DownloadModel;)V

    return-void
.end method
