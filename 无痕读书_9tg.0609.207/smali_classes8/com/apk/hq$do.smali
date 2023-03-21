.class public Lcom/apk/hq$do;
.super Ljava/lang/Object;
.source "RequestManagerRetriever.java"

# interfaces
.implements Lcom/apk/hq$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/hq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/ii;Lcom/apk/dq;Lcom/apk/iq;Landroid/content/Context;)Lcom/apk/qi;
    .locals 1
    .param p1    # Lcom/apk/ii;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/dq;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/apk/iq;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/qi;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/apk/qi;-><init>(Lcom/apk/ii;Lcom/apk/dq;Lcom/apk/iq;Landroid/content/Context;)V

    return-object v0
.end method
