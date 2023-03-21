.class public Lcom/apk/ty$do;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lcom/apk/hy$do;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/ty;->do(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Lcom/apk/hy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/ty;


# direct methods
.method public constructor <init>(Lcom/apk/ty;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ty$do;->do:Lcom/apk/ty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/apk/hy;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ty$do;->do:Lcom/apk/ty;

    .line 2
    invoke-virtual {v0, p1}, Lcom/apk/ty;->break(Lcom/apk/hy;)V

    .line 3
    new-instance v1, Lcom/apk/xy;

    invoke-direct {v1, v0, p1}, Lcom/apk/xy;-><init>(Lcom/apk/ty;Lcom/apk/hy;)V

    invoke-static {v1}, Lcom/apk/mu;->u(Ljava/lang/Runnable;)V

    return-void
.end method
