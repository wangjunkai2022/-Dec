.class public final Lcom/apk/ah0;
.super Lcom/apk/bh0;
.source "RequestBody.kt"


# instance fields
.field public final synthetic for:Lcom/apk/vg0;

.field public final synthetic if:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/apk/vg0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ah0;->if:Ljava/io/File;

    iput-object p2, p0, Lcom/apk/ah0;->for:Lcom/apk/vg0;

    invoke-direct {p0}, Lcom/apk/bh0;-><init>()V

    return-void
.end method


# virtual methods
.method public do()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ah0;->if:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public for(Lcom/apk/sk0;)V
    .locals 2
    .param p1    # Lcom/apk/sk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/ah0;->if:Ljava/io/File;

    .line 2
    invoke-static {v0}, Lcom/apk/bl0;->for(Ljava/io/File;)Lcom/apk/ll0;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-interface {p1, v0}, Lcom/apk/sk0;->const(Lcom/apk/ll0;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Lcom/apk/sb0;->import(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lcom/apk/sb0;->import(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public if()Lcom/apk/vg0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ah0;->for:Lcom/apk/vg0;

    return-object v0
.end method
