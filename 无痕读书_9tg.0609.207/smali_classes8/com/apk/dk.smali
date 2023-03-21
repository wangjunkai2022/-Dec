.class public final Lcom/apk/dk;
.super Ljava/lang/Object;
.source "ParcelFileDescriptorRewinder.java"

# interfaces
.implements Lcom/apk/vj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/dk$if;,
        Lcom/apk/dk$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/vj<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/dk$if;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/dk$if;

    invoke-direct {v0, p1}, Lcom/apk/dk$if;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/apk/dk;->do:Lcom/apk/dk$if;

    return-void
.end method


# virtual methods
.method public bridge synthetic do()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/dk;->for()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public for()Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/dk;->do:Lcom/apk/dk$if;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v1, v0, Lcom/apk/dk$if;->do:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    sget v4, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v1, v2, v3, v4}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object v0, v0, Lcom/apk/dk$if;->do:Landroid/os/ParcelFileDescriptor;

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0
.end method

.method public if()V
    .locals 0

    return-void
.end method
