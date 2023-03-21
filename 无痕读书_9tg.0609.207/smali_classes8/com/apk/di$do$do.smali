.class public Lcom/apk/di$do$do;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/di$do;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/di$else;

.field public final synthetic if:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/apk/di$do;Lcom/apk/di$else;Ljava/net/Socket;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/apk/di$do$do;->do:Lcom/apk/di$else;

    iput-object p3, p0, Lcom/apk/di$do$do;->if:Ljava/net/Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/di$do$do;->do:Lcom/apk/di$else;

    invoke-virtual {v0}, Lcom/apk/di$else;->run()V

    .line 2
    iget-object v0, p0, Lcom/apk/di$do$do;->if:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
