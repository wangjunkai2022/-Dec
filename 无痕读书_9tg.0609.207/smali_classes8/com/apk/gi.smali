.class public final Lcom/apk/gi;
.super Ljava/lang/Object;
.source "GeneratedRequestManagerFactory.java"

# interfaces
.implements Lcom/apk/hq$if;


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
    new-instance v0, Lcom/apk/t30;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/apk/t30;-><init>(Lcom/apk/ii;Lcom/apk/dq;Lcom/apk/iq;Landroid/content/Context;)V

    return-object v0
.end method
