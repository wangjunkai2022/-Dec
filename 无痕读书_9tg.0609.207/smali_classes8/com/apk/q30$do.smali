.class public Lcom/apk/q30$do;
.super Ljava/lang/Object;
.source "DesOkHttpUrlLoader.java"

# interfaces
.implements Lcom/apk/zm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/q30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/zm<",
        "Lcom/apk/rm;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static volatile if:Lcom/apk/zf0$do;


# instance fields
.field public final do:Lcom/apk/zf0$do;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/apk/q30$do;->if:Lcom/apk/zf0$do;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/q30$do;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/q30$do;->if:Lcom/apk/zf0$do;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/xg0;

    .line 5
    new-instance v2, Lcom/apk/xg0$do;

    invoke-direct {v2}, Lcom/apk/xg0$do;-><init>()V

    invoke-direct {v1, v2}, Lcom/apk/xg0;-><init>(Lcom/apk/xg0$do;)V

    .line 6
    sput-object v1, Lcom/apk/q30$do;->if:Lcom/apk/zf0$do;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/apk/q30$do;->if:Lcom/apk/zf0$do;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/apk/q30$do;->do:Lcom/apk/zf0$do;

    return-void
.end method


# virtual methods
.method public do()V
    .locals 0

    return-void
.end method

.method public for(Lcom/apk/cn;)Lcom/apk/ym;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/cn;",
            ")",
            "Lcom/apk/ym<",
            "Lcom/apk/rm;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/apk/q30;

    iget-object v0, p0, Lcom/apk/q30$do;->do:Lcom/apk/zf0$do;

    invoke-direct {p1, v0}, Lcom/apk/q30;-><init>(Lcom/apk/zf0$do;)V

    return-object p1
.end method
