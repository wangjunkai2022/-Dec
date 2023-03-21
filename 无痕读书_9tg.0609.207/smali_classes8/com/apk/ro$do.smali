.class public Lcom/apk/ro$do;
.super Ljava/lang/Object;
.source "StreamBitmapDecoder.java"

# interfaces
.implements Lcom/apk/eo$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public final do:Lcom/apk/oo;

.field public final if:Lcom/apk/zr;


# direct methods
.method public constructor <init>(Lcom/apk/oo;Lcom/apk/zr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/ro$do;->do:Lcom/apk/oo;

    .line 3
    iput-object p2, p0, Lcom/apk/ro$do;->if:Lcom/apk/zr;

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/pl;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ro$do;->if:Lcom/apk/zr;

    .line 2
    iget-object v0, v0, Lcom/apk/zr;->if:Ljava/io/IOException;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1, p2}, Lcom/apk/pl;->do(Landroid/graphics/Bitmap;)V

    .line 4
    :cond_0
    throw v0

    :cond_1
    return-void
.end method

.method public if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ro$do;->do:Lcom/apk/oo;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/apk/oo;->do:[B

    array-length v1, v1

    iput v1, v0, Lcom/apk/oo;->for:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
